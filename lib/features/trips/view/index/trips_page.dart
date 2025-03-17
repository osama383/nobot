import 'package:dartz/dartz.dart' as dartz;
import 'package:faker/faker.dart' hide Address;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nobot/core/models/email/email.dart';
import 'package:nobot/core/models/product/product.dart';
import 'package:nobot/core/models/product/service_status.dart';
import 'package:nobot/core/models/tasks/task.dart';
import 'package:nobot/core/models/utc.dart';
import 'package:nobot/core/models/value_object/value_object.dart';
import 'package:nobot/core/models/volume/volume.dart';
import 'package:nobot/core/scaffold/nav/nav.dart';
import 'package:nobot/core/scaffold/view/base_scaffold.dart';
import 'package:nobot/core/table-builder/controller/table_builder_bloc/table_builder_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:nobot/core/widgets/wip_overlay.dart';
import 'package:nobot/features/trips/controller/bloc/trips_bloc.dart';
import 'package:nobot/features/trips/view/index/table_bloc_init.dart';

import '../../../../core/models/address/address.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/tasks/service_grease/service_grease.dart';
import '../../../../core/repository.dart';
import '../../../../core/table-builder/view/table_builder/table_builder.dart';
import '../../../../injection.dart';
import '../../../auth/data/auth.dart';

class TripsPage extends StatefulWidget {
  final Auth auth;

  const TripsPage(this.auth, {super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  late final TripsBloc _bloc;
  late final TableBuilderBloc<Trip> _tableBloc;

  @override
  void didChangeDependencies() {
    _bloc = TripsBloc(sl());
    _tableBloc = tripsTableBloc(context.localizationLabels);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _bloc),
        BlocProvider.value(value: _tableBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<TripsBloc, TripsState>(
            listener: (context, state) {
              _tableBloc.add(TableBuilderEvent.setItems(state.trips));
            },
          ),
        ],
        child: BaseScaffold(
          widget.auth,
          title: labels.routesTitle,
          selectedItem: NavItem.trips,
          actions: [
            TextButton(
              onPressed: () {
                seedData(
                  customersCount: 100,
                  waypointsPerCustomerCount: 20,
                  tripsCount: 100,
                );
              },
              child: const Text('Seed data'),
            ),
          ],
          body: BlocBuilder<TripsBloc, TripsState>(
            builder: (context, state) {
              return Stack(
                children: [
                  TableBuilder<Trip>(
                    showTopBorder: true,
                    rowHeight: context.useMobileLayout ? 85 : 60,
                    onRowTap: (trip) {},
                  ),
                  WipOverlay(state.isLoading),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

seedData({
  required int customersCount,
  required int waypointsPerCustomerCount,
  required int tripsCount,
}) {
  final customers = List.generate(
    customersCount,
    (_) {
      return Customer(
        id: Faker().guid.guid(),
        name: VString(faker.person.name()),
        address: Address(
          VString(faker.address.streetAddress()),
          LatLng(
            faker.geo.latitude(),
            faker.geo.longitude(),
          ),
        ),
        products: {
          Grease(
            status: ServiceStatus.active,
            dueDate: UtcOption.none(),
            lastService: UtcOption.none(),
            location: LatLng(faker.geo.latitude(), faker.geo.longitude()),
            serviceNotificationEmails: {EmailAddress(faker.internet.email())},
            capacity: Volume.fromUnits(
              faker.randomGenerator.integer(1000).toDouble(),
            ),
          ),
        },
      );
    },
  );
  final tripIds = List.generate(
    tripsCount,
    (_) => faker.guid.guid(),
  );
  final waypointsCount = waypointsPerCustomerCount * customersCount;
  final waypointsPerTripCount = (waypointsCount / tripsCount).floor();

  final waypoints = List.generate(
    waypointsCount,
    (waypointIndex) {
      final customer =
          customers[(waypointIndex / waypointsPerCustomerCount).floor()];
      return Waypoint(
        id: faker.guid.guid(),
        tripId: tripIds[(waypointIndex / waypointsPerTripCount).floor()],
        customer: customer,
        tasks: [
          ServiceGrease(
            status: TaskStatus.pending,
            capacity: customer.products.whereType<Grease>().first.capacity,
          ),
        ],
      );
    },
  );
  final trips = List.generate(
    tripsCount,
    (tripIndex) {
      final scheduledDate = (faker.date.dateTime());
      return Trip(
        id: faker.guid.guid(),
        name: VString(
          scheduledDate.millisecondsSinceEpoch.toString(),
        ),
        status: TripStatus.draft,
        waypoints: List.generate(waypointsPerTripCount, (waypointIndex) {
          final startIndex = tripIndex * waypointsPerTripCount;

          return waypoints[startIndex + waypointIndex];
        }),
      );
    },
  );
  sl<Repository>().seedData(customers, waypoints, trips);
}

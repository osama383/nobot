import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nobot/core/models/address/address.dart';
import 'package:nobot/core/models/customer/customer.dart';
import 'package:nobot/core/models/tasks/service_grease/service_grease.dart';
import 'package:nobot/core/models/utc.dart';
import 'package:nobot/core/models/value_object/mappers.dart';
import 'package:nobot/core/models/value_object/value_object.dart';
// import 'package:nobot/core/models/customer/customer.dart';
// import 'package:nobot/core/models/product/product.dart';
// import 'package:nobot/core/models/product/service_status.dart';
// import 'package:nobot/core/models/story/story.dart';

// import 'package:injectable/injectable.dart';

void main() {
  setUp(() {
    MapperContainer.globals.use(const VStringMapper());
    MapperContainer.globals.use(const EmailMapper());
    MapperContainer.globals.use(const LatLngMapper());
    MapperContainer.globals.use(const OptionUtcMapper());
  });

  test('this is a test', () {
    final customer = Customer(
      id: 'asdcbn',
      name: VString('skdcb'),
      address: Address(VString('akdvcb'), LatLng(43, 85)),
      products: {},
    );
    final waypoint = Waypoint(
      customer: customer,
      tasks: [],
    );
    final trip = Trip(
      id: 'asdvcbak',
      name: VString('asdkjcvbajk'),
      status: TripStatus.draft,
      waypoints: [waypoint],
    );
    final tripMap = trip.toMap();
    final waypointMap = waypoint.toMap();
    print(tripMap);
    print(TripMapper.fromMap(tripMap
      ..addAll({
        'waypoints': [waypointMap]
      })));
  });
  // test('', () {
  //   final customer = Customer(
  //     id: 'someId',
  //     name: 'big foods',
  //     products: {
  //       Uco(
  //         status: ServiceStatus.active,
  //         dueDate: DateTime.now(),
  //         lastService: DateTime.now(),
  //       ),
  //       Grease(
  //         status: ServiceStatus.inactive,
  //         dueDate: DateTime.now(),
  //         lastService: DateTime.now(),
  //       ),
  //     },
  //   );
  // });
}

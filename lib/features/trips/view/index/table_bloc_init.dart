import 'package:nobot/core/localization/localization_labels.dart';
import 'package:nobot/core/table-builder/controller/table_builder_bloc/table_builder_bloc.dart';
import 'package:nobot/core/tables/columns/trip/trip_columns.dart';

import '../../../../core/models/tasks/service_grease/service_grease.dart';
import '../../../../core/tables/tables.dart';

TableBuilderBloc<Trip> tripsTableBloc(LocalizationLabels labels) {
  final columns = TripColumns<Trip>(
    labels,
    getTrip: (e) => e,
  );
  return TableBuilderBloc(
    tableId: Tables.tripsIndex.name,
    builders: [
      columns.name(),
      columns.status(),
    ],
    theItems: [],
    theFreezedColumnsCount: 1,
  );
}

import '../../../localization/localization_labels.dart';
import '../../../models/tasks/service_grease/service_grease.dart';
import '../../../table-builder/domain/filter.dart';
import '../columns.dart';

class TripColumns<T extends Object> {
  final LocalizationLabels labels;
  final Trip Function(T object) getTrip;

  TripColumns(this.labels, {required this.getTrip});
  TableColumn<T, String> name() {
    return TableColumn.primitive(
      showFilter: true,
      column: Columnar(
        id: labels.name,
        groupId: Columns.tripGeneral.name,
        name: labels.name,
        decoration: const ColumnDecoration(minWidth: 130, flex: 2),
        data: (e) => TableData(value: getTrip(e).name.getOrCrash),
      ),
    );
  }

  TableColumn<T, TripStatus> status() {
    return TableColumn.collection(
      column: Columnar(
        id: labels.status,
        groupId: Columns.tripGeneral.name,
        name: labels.status,
        decoration: const ColumnDecoration(minWidth: 160, maxWidth: 160),
        data: (e) => TableData(value: labels.tripStatus(getTrip(e).status)),
      ),
      multiselectFilter: MultiselectFilter(
        columnId: labels.status,
        value: (e) => {getTrip(e).status},
        options: TripStatus.values.toSet(),
        optionName: (status) => labels.tripStatus(status),
        includeEmptyOption: false,
        emptyOptionName: '',
      ),
    );
  }
}

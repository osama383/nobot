import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../spec/table_spec/table_spec.dart';
part 'sort.freezed.dart';

@freezed
class Sort<T extends Object, V extends Object> with _$Sort<T, V> {
  const Sort._();
  const factory Sort({
    required String columnId,
    required V Function(T item) value,
    required bool ascending,
  }) = _Sort;

  SortSpec toSpec() {
    return SortSpec(
      columnId: columnId,
      ascending: ascending,
    );
  }
}

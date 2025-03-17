import 'package:dartz/dartz.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../navigator_key.dart';
import '../../models/real_number.dart';
import '../../models/utc.dart';
import '../../models/volume/volume.dart';
import '../controller/table_builder_bloc/table_builder_bloc.dart';
import '../view/table_builder/table_builder.dart';
import 'criteria.dart';
import '../../spec/table_spec/table_spec.dart';
part 'filter.freezed.dart';

@freezed
sealed class TableColumn<T extends Object, V extends Object>
    with _$TableColumn<T, V> {
  const TableColumn._();
  const factory TableColumn.primitive({
    required bool showFilter,
    required Columnar<T, V> column,
  }) = PrimitiveColumn;
  const factory TableColumn.collection({
    required Columnar<T, String> column,
    required MultiselectFilter<T, V> multiselectFilter,
  }) = CollectionColumn;
  Filter<T, V>? get filter {
    return switch (this) {
      CollectionColumn<T, V> e => e.multiselectFilter,
      PrimitiveColumn<T, V> e => e.showFilter
          ? Filter<T, V>.primitive(
              columnId: e.column.id,
              groupId: e.column.groupId,
              value: (item) => e.column.data(item).value,
            )
          : null,
    };
  }
}

@freezed
class ColumnDecoration with _$ColumnDecoration {
  const factory ColumnDecoration({
    @Default(0) double minWidth,
    double? maxWidth,
    @Default(1) int flex,
    @Default(EdgeInsets.symmetric(horizontal: 8)) EdgeInsets padding,
  }) = _ColumnDecoration;
}

@freezed
class Columnar<T extends Object, V extends Object> with _$Columnar<T, V> {
  const Columnar._();
  const factory Columnar({
    required String id,
    @Default('') String groupId,
    required String name,
    @Default(true) bool showNameInHeader,
    @Default(ColumnDecoration()) ColumnDecoration decoration,
    @Default(true) bool isVisible,
    @Default(null) TextStyle? Function(T item)? textStyle,
    required TableData<V> Function(T item) data,
    @Default(null) String Function(List<T> items)? total,
  }) = _Columnar;
}

@freezed
class ColumnGroup with _$ColumnGroup {
  const factory ColumnGroup({
    required String id,
    required String title,
    required bool isVisible,
  }) = _ColumnGroup;
}

class TableData<V extends Object> {
  final V value;
  final Widget? child;
  final CellValue? excel;
  TableData({
    required this.value,
    this.child,
    CellValue? excel = const FormulaCellValue(''),
  }) : excel = excel == const FormulaCellValue('') ? excelValue(value) : excel;
  factory TableData.optionalString(Option<String> val) {
    return val.fold(
      () => TableData(
        value: labels.hyphen,
        child: const SizedBox.shrink(),
        excel: null,
      ),
      (a) => TableData(value: a),
    ) as TableData<V>;
  }
  factory TableData.money(RealNumber val) {
    return TableData(
      value: val.getOrCrash as V,
      child: Text(val.getOrCrash.toStringAsFixed(2)),
    );
  }
  factory TableData.optionalMoney(Option<RealNumber> val) {
    return val.fold(
      () => TableData(
        value: -1 as V,
        child: const SizedBox.shrink(),
        excel: null,
      ),
      (a) => TableData.money(a),
    );
  }
  factory TableData.realNumber(RealNumber val) {
    final number = val.getOrCrash;
    return TableData(
      value: number as V,
      child: Text(
        number is int ? number.toString() : number.toStringAsFixed(1),
      ),
      excel: number is int
          ? IntCellValue(number)
          : DoubleCellValue(number.toDouble()),
    );
  }
  factory TableData.optionalRealNumber(Option<RealNumber> val) {
    return val.fold(
      () => TableData(
        value: -1 as V,
        child: const SizedBox.shrink(),
        excel: null,
      ),
      (a) => TableData.realNumber(a),
    );
  }

  static TableData<Utc> dateTime(Utc val) {
    return TableData(
      value: val,
      child: Text(val.toNumericMonthDayYearTime),
      excel: DateTimeCellValue.fromDateTime(val.ctz),
    );
  }

  static TableData<Utc> dateOnly(Utc val) {
    return TableData<Utc>(
      value: val,
      child: Text(val.toNumericMonthDayYear),
      excel: DateCellValue.fromDateTime(val.ctz),
    );
  }

  static TableData<Utc> optionalDateTime(UtcOption val) {
    return val.fold(
      () => TableData(
        value: Utc.epoch(),
        child: const SizedBox.shrink(),
        excel: null,
      ),
      (a) => TableData.dateTime(a),
    );
  }

  static TableData<Utc> optionalDateOnly(UtcOption val) {
    return val.fold(
      () => TableData(
        value: Utc.epoch(),
        child: const SizedBox.shrink(),
        excel: null,
      ),
      (a) => TableData.dateOnly(a),
    );
  }

  factory TableData.volume(Volume val) {
    return TableData(value: val.unitsRound() as V);
  }
  factory TableData.optionalVolume(Option<Volume> val) {
    return val.fold(
      () => TableData(
        value: -1 as V,
        child: const SizedBox.shrink(),
        excel: null,
      ),
      (a) => TableData.volume(a),
    );
  }
}

CellValue? excelValue(v) {
  if (v is String) {
    return TextCellValue(v);
  } else if (v is DateTime) {
    return DateTimeCellValue.fromDateTime(v);
  } else if (v is int) {
    return IntCellValue(v);
  } else if (v is double) {
    return DoubleCellValue(v);
  }
  return TextCellValue(v.toString());
}

@freezed
sealed class Filter<T extends Object, V extends Object> with _$Filter<T, V> {
  const Filter._();
  const factory Filter.primitive({
    required String columnId,
    @Default('') String groupId,
    required V Function(T item) value,
    @Default([]) List<AppliedCriterion<V>> appliedCriteria,
    @Default(null) Widget? filterIcon,
    @Default(null) Widget? filteredIcon,
  }) = PrimitiveFilter;
  const factory Filter.multiselect({
    required String columnId,
    @Default('') String groupId,
    required Set<V> Function(T item) value,
    required Set<V> options,
    required String Function(V) optionName,
    required bool includeEmptyOption,
    required String emptyOptionName,
    @Default(null) Color? Function(V option)? optionColor,
    @Default([]) List<AppliedCriterion<Set<V>>> appliedCriteria,
    @Default(null) Widget? filterIcon,
    @Default(null) Widget? filteredIcon,
  }) = MultiselectFilter;
  Filter<T, V> copyFromSpec(FilterSpec spec) {
    switch (this) {
      case PrimitiveFilter<T, V> filter:
        return PrimitiveFilter(
          columnId: columnId,
          groupId: groupId,
          value: filter.value,
          filterIcon: filterIcon,
          filteredIcon: filteredIcon,
          appliedCriteria: spec.criteriaSpecs.map((e) {
            return switch (e) {
              StringFilterCriterionSpec() => AppliedCriterion(
                  name: StringCriteria.values.byName(e.name),
                  target: e.target,
                ) as AppliedCriterion<V>,
              NumberFilterCriterionSpec() => AppliedCriterion(
                  name: NumberCriteria.values.byName(e.name),
                  target: e.target,
                ) as AppliedCriterion<V>,
              DateFilterCriterionSpec() => AppliedCriterion(
                  name: DateCriteria.values.byName(e.name),
                  target: e.target,
                ) as AppliedCriterion<V>,
              CollectionFilterCriterionSpec() => throw UnimplementedError(),
            };
          }).toList(),
        );
      case MultiselectFilter<T, V> filter:
        return MultiselectFilter(
          columnId: columnId,
          groupId: groupId,
          value: filter.value,
          includeEmptyOption: filter.includeEmptyOption,
          options: filter.options,
          optionName: filter.optionName,
          optionColor: filter.optionColor,
          filterIcon: filterIcon,
          filteredIcon: filteredIcon,
          emptyOptionName: filter.emptyOptionName,
          appliedCriteria: spec.criteriaSpecs.map((e) {
            return AppliedCriterion(
              name: ListCriteria.values.byName(e.name),
              target: (e.target as Set<String>)
                  .map(
                    (targetName) => filter.options.singleWhere(
                      (option) => filter.optionName(option) == targetName,
                    ),
                  )
                  .toSet(),
            );
          }).toList(),
        );
    }
  }

  FilterSpec toSpec() {
    return FilterSpec(
      columnId: columnId,
      criteriaSpecs: appliedCriteria.map((criterion) {
        return switch (criterion) {
          AppliedCriterion<String>() => FilterCriterionSpec.string(
              name: criterion.name.name,
              target: criterion.target,
            ),
          AppliedCriterion<num>() => FilterCriterionSpec.number(
              name: criterion.name.name,
              target: criterion.target.toDouble(),
            ),
          AppliedCriterion<DateTime>() => FilterCriterionSpec.date(
              name: criterion.name.name,
              target: criterion.target,
            ),
          AppliedCriterion<Set<V>>() => FilterCriterionSpec.collection(
              name: criterion.name.name,
              target: criterion.target
                  .map(
                    (e) => (this as MultiselectFilter<T, V>).optionName(e),
                  )
                  .toSet(),
            ),
          AppliedCriterion<Object>() => throw UnimplementedError(),
        };
      }).toList(),
    );
  }

  bool test(T item) {
    switch (this) {
      case PrimitiveFilter<T, V> filter:
        return filter.appliedCriteria.every((e) {
          final criterion = PrimitivesCriterion.criterion<V>(e.name);
          return criterion.test(filter.value(item), e.target);
        });
      case MultiselectFilter<T, V> filter:
        return filter.appliedCriteria.every((e) {
          final criterion = SetCriterion.named(e.name as ListCriteria);
          return criterion.test(filter.value(item), e.target);
        });
    }
  }

  Widget menu(TableBuilderBloc<T> bloc, Key key) {
    return BlocProvider<TableBuilderBloc<T>>.value(
      value: bloc,
      child: switch (this) {
        PrimitiveFilter<T, String> f => StringFilterMenu<T>(f, key: key),
        PrimitiveFilter<T, num> f => NumberFilterMenu<T>(f, key: key),
        PrimitiveFilter<T, Utc> f => DateFilterMenu<T>(f, key: key),
        MultiselectFilter<T, V> f => MultiselectFilterMenu(f, key: key),
        PrimitiveFilter<T, V>() => throw UnimplementedError(),
      },
    );
  }

  Filter<T, V> clearCriteria() {
    switch (this) {
      case PrimitiveFilter<T, V> filter:
        return PrimitiveFilter(
          columnId: columnId,
          groupId: groupId,
          value: filter.value,
          appliedCriteria: [],
          filterIcon: filterIcon,
          filteredIcon: filteredIcon,
        );
      case MultiselectFilter<T, V> filter:
        return MultiselectFilter(
          columnId: columnId,
          groupId: groupId,
          value: filter.value,
          appliedCriteria: [],
          includeEmptyOption: filter.includeEmptyOption,
          emptyOptionName: filter.emptyOptionName,
          options: filter.options,
          optionName: filter.optionName,
          optionColor: filter.optionColor,
          filterIcon: filterIcon,
          filteredIcon: filteredIcon,
        );
    }
  }

  Filter<T, V> copyWithCriteria(List<AppliedCriterion<dynamic>> criteria) {
    switch (this) {
      case PrimitiveFilter<T, V> filter:
        return PrimitiveFilter(
          columnId: columnId,
          groupId: groupId,
          value: filter.value,
          appliedCriteria: criteria as List<AppliedCriterion<V>>,
          filterIcon: filterIcon,
          filteredIcon: filteredIcon,
        );
      case MultiselectFilter<T, V> filter:
        return MultiselectFilter(
          columnId: columnId,
          groupId: groupId,
          value: filter.value,
          appliedCriteria: criteria as List<AppliedCriterion<Set<V>>>,
          includeEmptyOption: filter.includeEmptyOption,
          emptyOptionName: filter.emptyOptionName,
          options: filter.options,
          optionName: filter.optionName,
          optionColor: filter.optionColor,
          filterIcon: filterIcon,
          filteredIcon: filteredIcon,
        );
    }
  }
}

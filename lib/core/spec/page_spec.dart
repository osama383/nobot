import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../smart_dates/smart_dates.dart';
import 'table_spec/table_spec.dart';

part 'page_spec.freezed.dart';
part 'page_spec.g.dart';

@freezed
sealed class PageSpec with _$PageSpec {
  const factory PageSpec.customers({
    required String depotId,
    required TableSpec tableSpec,
  }) = CustomersPageSpec;

  const factory PageSpec.trips({
    required String depotId,
    required TableSpec tableSpec,
  }) = TripsPageSpec;

  const factory PageSpec.reports({
    @ReportsDateSelectionJsonConverter()
    required Either<SmartDates, DateTimeRange> dateSelection,
    required TableSpec tableSpec,
  }) = ReportsPageSpec;

  factory PageSpec.fromJson(Map<String, dynamic> json) =>
      _$PageSpecFromJson(json);
}

class ReportsDateSelectionJsonConverter
    implements
        JsonConverter<Either<SmartDates, DateTimeRange>, Map<String, dynamic>> {
  const ReportsDateSelectionJsonConverter();

  @override
  Either<SmartDates, DateTimeRange> fromJson(Map<String, dynamic> json) {
    if (json['runtimeType'] == 'SmartDates') {
      return left(SmartDates.values.byName(json['value']));
    } else {
      return right(
        DateTimeRange(
          start: DateTime.fromMillisecondsSinceEpoch(json['value']['start']),
          end: DateTime.fromMillisecondsSinceEpoch(json['value']['end']),
        ),
      );
    }
  }

  @override
  Map<String, dynamic> toJson(Either<SmartDates, DateTimeRange> object) =>
      object.fold(
        (smart) => {
          'runtimeType': 'SmartDates',
          'value': smart.name,
        },
        (range) => {
          'runtimeType': 'DateRange',
          'value': {
            'start': range.start.millisecondsSinceEpoch,
            'end': range.end.millisecondsSinceEpoch,
          },
        },
      );
}

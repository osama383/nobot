import 'package:dart_mappable/dart_mappable.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart';

part 'utc.mapper.dart';

@MappableClass()
class Utc with UtcMappable, EquatableMixin implements Comparable<Utc> {
  final DateTime _valueInUtc;

  Utc(DateTime value) : _valueInUtc = value.toUtc();
  Utc.now() : _valueInUtc = DateTime.now().toUtc();
  Utc.epoch()
      : _valueInUtc = DateTime.fromMicrosecondsSinceEpoch(
          0,
          isUtc: true,
        );

  static Utc? tryParse(String input) {
    final result = DateTime.tryParse(input);
    return result == null ? null : Utc(result);
  }

  DateTime get value => _valueInUtc;
  DateTime get ctz => TZDateTime.from(value, local).toLocal();

  @override
  int compareTo(Utc other) => _valueInUtc.compareTo(other._valueInUtc);

  int get year => _valueInUtc.year;
  int get month => _valueInUtc.month;
  int get day => _valueInUtc.day;
  int get hour => _valueInUtc.hour;
  int get minute => _valueInUtc.minute;
  int get weekday => _valueInUtc.weekday;

  bool get isEpoch => _valueInUtc.microsecondsSinceEpoch == 0;

  bool get isToday => isSameDay(Utc.now());
  bool get isYesterday {
    return isSameDay(Utc.now().subtract(const Duration(hours: 24)));
  }

  bool get isTomorrow => isSameDay(Utc.now().add(const Duration(hours: 1)));

  Utc add(Duration duration) => Utc(_valueInUtc.add(duration));
  Utc subtract(Duration duration) => Utc(_valueInUtc.subtract(duration));

  bool isAfter(Utc other) => _valueInUtc.isAfter(other._valueInUtc);
  bool isBefore(Utc other) => _valueInUtc.isBefore(other._valueInUtc);

  bool isSameDay(Utc other) =>
      _valueInUtc.year == other._valueInUtc.year &&
      _valueInUtc.month == other._valueInUtc.month &&
      _valueInUtc.day == other._valueInUtc.day;

  bool isWithinTheNext({required int days}) {
    return isBefore(Utc.now().add(Duration(days: days)));
  }

  Duration difference(Utc other) => _valueInUtc.difference(other._valueInUtc);

  int daysTo(Utc other) {
    return other._valueInUtc.difference(_valueInUtc).inDays;
  }

  String get toMonthAndDay => DateFormat(DateFormat.ABBR_MONTH_DAY).format(ctz);

  String get toTime {
    return (DateFormat.jm().format(ctz))
        .replaceAll('AM', 'am')
        .replaceAll('PM', 'pm');
  }

  String get toNumericMonthDayYear => DateFormat('M/d/yy').format(ctz);
  String get toNumericMonthDayYearTime => '$toNumericMonthDayYear - $toTime';

  Utc copyWithNonUtcTimeOfDay(TimeOfDay time) {
    return Utc(ctz.copyWith(hour: time.hour, minute: time.minute));
  }

  Utc copyToStartOfDay() {
    return copyUtc(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }

  Utc copyToEndOfDay() {
    return copyUtc(
      hour: 23,
      minute: 59,
      second: 59,
      millisecond: 999,
      microsecond: 999,
    );
  }

  Utc copyUtc({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return Utc(
      _valueInUtc.copyWith(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond,
        microsecond: microsecond,
      ),
    );
  }

  @override
  List<Object?> get props => [_valueInUtc];
}

@MappableClass(includeCustomMappers: [OptionUtcMapper()])
class UtcOption with UtcOptionMappable, EquatableMixin {
  final Option<Utc> _option;

  UtcOption.none() : _option = none();
  UtcOption.some(Utc value) : _option = some(value);

  UtcOption.optionOf(Utc? value) : _option = optionOf(value);

  B fold<B>(B Function() ifNone, B Function(Utc a) ifSome) {
    return _option.fold(ifNone, ifSome);
  }

  Utc getOrElse(Utc Function() orElse) {
    return _option.getOrElse(orElse);
  }

  bool isSome() => _option.isSome();
  bool isNone() => _option.isNone();

  @override
  List<Object?> get props => [_option];
}

class OptionUtcMapper extends SimpleMapper<Option<Utc>> {
  const OptionUtcMapper();

  @override
  Option<Utc> decode(dynamic value) {
    return value['type'] == 'none'
        ? none()
        : some(UtcMapper.fromMap(value['value']));
  }

  @override
  dynamic encode(Option<Utc> self) {
    return self.fold(
      () => {'type': 'none'},
      (date) => {
        'type': 'some',
        'value': date.toMap(),
      },
    );
  }
}

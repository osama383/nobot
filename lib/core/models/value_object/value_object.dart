import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_object.freezed.dart';

class ValueObject<FailureType, ValidType> {
  final Either<FailureType, ValidType> value;

  const ValueObject(this.value);

  bool get isValid => value.isRight();
  bool get isInValid => value.isLeft();
  ValidType get getOrCrash => value.fold((l) => throw Error(), id);
  String get getOrEmpty => value.fold((l) => '', (r) => r.toString());
  String get valueAsString =>
      value.fold((l) => l.toString(), (r) => r.toString());

  Either<dynamic, Unit> get failureOrUnit => value.fold(
        (l) => left(l),
        (r) => right(unit),
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<FailureType, ValidType> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class AlwaysValid<T extends Object> extends ValueObject<T, T> {
  AlwaysValid(T input) : super(right(input));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is VString && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'AlwaysValid($valueAsString)';
}

class VString extends ValueObject<String, String> {
  VString(String? input) : super(validate(input));

  factory VString.empty() => VString('');

  static Either<String, String> validate(final String? input) {
    return input == null || input.isEmpty ? left('') : right(input);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is VString && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'VString($valueAsString)';
}

class CaseInsensitiveString {
  final String value;
  CaseInsensitiveString(this.value);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CaseInsensitiveString &&
        other.value.toLowerCase() == value.toLowerCase();
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'CaseInsensitive($value)';
}

class VInt extends ValueObject<VIntError, int> {
  int? max, min;

  VInt.fromInt(
    int input, {
    this.min,
    this.max,
  }) : super(validate(input.toString(), max: max, min: min));

  VInt(
    String? input, {
    int? min,
    int? max,
  }) : super(validate(input, max: max, min: min));

  static Either<VIntError, int> validate(
    final String? input, {
    final int? max,
    final int? min,
  }) {
    if (input == null) return left(VIntError.notAnInt(''));
    int? parsedNumber = int.tryParse(input);
    if (parsedNumber == null) return left(VIntError.notAnInt(input));
    if (max != null && parsedNumber > max) {
      return left(VIntError.tooHigh(parsedNumber));
    }
    if (min != null && parsedNumber < min) {
      return left(VIntError.tooLow(parsedNumber));
    }
    return right(parsedNumber);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is VInt && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'VInt($valueAsString)';
}

@freezed
class VIntError with _$VIntError {
  const VIntError._();
  factory VIntError.notAnInt(String input) = _NotAnInt;
  factory VIntError.tooHigh(int number) = _TooHighInt;
  factory VIntError.tooLow(int number) = _TooLowInt;

  String get asString {
    return map(
      notAnInt: (notAnInt) => notAnInt.input,
      tooHigh: (tooHigh) => tooHigh.number.toString(),
      tooLow: (tooLow) => tooLow.number.toString(),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is VIntError && other.asString == asString;
  }

  @override
  int get hashCode => asString.hashCode;

  @override
  String toString() => asString;
}

class VDouble extends ValueObject<VDoubleError, double> {
  double? max, min;

  VDouble.fromDouble(
    double input, {
    this.max,
    this.min,
  }) : super(validate(input.toString(), max: max, min: min));

  VDouble(
    String? input, {
    this.max,
    this.min,
  }) : super(validate(input, max: max, min: min));

  static Either<VDoubleError, double> validate(
    final String? input, {
    double? min,
    double? max,
  }) {
    if (input == null) return left(VDoubleError.notADouble(''));
    double? parsedNumber = double.tryParse(input);
    if (parsedNumber == null) return left(VDoubleError.notADouble(input));
    if (max != null && parsedNumber > max) {
      return left(VDoubleError.tooHigh(parsedNumber));
    }
    if (min != null && parsedNumber < min) {
      return left(VDoubleError.tooLow(parsedNumber));
    }
    return right(parsedNumber);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is VDouble && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'VDouble($valueAsString)';
}

@freezed
class VDoubleError with _$VDoubleError {
  const VDoubleError._();
  factory VDoubleError.notADouble(String input) = _NotADouble;
  factory VDoubleError.tooHigh(double number) = _TooHighDouble;
  factory VDoubleError.tooLow(double number) = _TooLowDouble;

  String get asString {
    return map(
      notADouble: (notADouble) => notADouble.input,
      tooHigh: (tooHigh) => tooHigh.number.toString(),
      tooLow: (tooLow) => tooLow.number.toString(),
    );
  }

  @override
  String toString() => asString;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is VDoubleError && other.asString == asString;
  }

  @override
  int get hashCode => asString.hashCode;
}

class UniqueId extends ValueObject<String, String> {
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right<String, String>(uniqueId));
  }

  const UniqueId._(super.value);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UniqueId && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'UniqueId($value)';
}

class UrlVO extends ValueObject<String, String> {
  UrlVO(String input) : super(validate(input));

  static Either<String, String> validate(String input) {
    RegExp urlExp = RegExp(
      // ignore: prefer_single_quotes
      r"(http|ftp|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?",
    );
    return urlExp.hasMatch(input) ? right(input) : left(input);
  }
}

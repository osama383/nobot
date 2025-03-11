import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';

import 'value_object/value_object.dart';

abstract class RealNumber {
  num get getOrCrash;

  B fold<B>(B Function(Object l) ifLeft, B Function(num r) ifRight);
  bool get isValid;
}

class RealInt extends RealNumber with EquatableMixin {
  final VInt value;

  RealInt(int input) : value = VInt.fromInt(input, min: 0);
  RealInt.parse(String input) : value = VInt(input, min: 0);

  @override
  int get getOrCrash => value.getOrCrash;

  @override
  B fold<B>(B Function(VIntError l) ifLeft, B Function(int r) ifRight) =>
      value.value.fold(
        (l) => ifLeft(l),
        (r) => ifRight(r),
      );

  @override
  bool get isValid => value.isValid;

  @override
  List<Object?> get props => [value];

  RealInt operator +(RealInt other) {
    return RealInt(getOrCrash + other.getOrCrash);
  }
}

@MappableClass()
class RealDouble extends RealNumber with EquatableMixin {
  final VDouble value;

  RealDouble(double input) : value = VDouble.fromDouble(input, min: 0);
  RealDouble.parse(String? input) : value = VDouble(input, min: 0);

  @override
  double get getOrCrash => value.getOrCrash;

  RealDouble operator +(RealDouble other) {
    return RealDouble(getOrCrash + other.getOrCrash);
  }

  RealDouble operator *(RealDouble other) {
    return RealDouble(getOrCrash * other.getOrCrash);
  }

  RealDouble operator -(RealDouble other) {
    return RealDouble(getOrCrash - other.getOrCrash);
  }

  @override
  B fold<B>(B Function(VDoubleError l) ifLeft, B Function(double r) ifRight) =>
      value.value.fold(
        (l) => ifLeft(l),
        (r) => ifRight(r),
      );

  @override
  bool get isValid => value.value.isRight();

  @override
  List<Object?> get props => [value];
}

import 'package:equatable/equatable.dart';

import '../real_number.dart';
import '../units/si.dart';
import '../value_object/value_object.dart';

//TODO: this of course should not be const
const si = SI.metric;

enum Materials {
  oil,
  water,
  unpumpedSolids,
}

class VolumeToVolumeRatios {
  static const double gallonsToLiters = 3.78541;
  static const double gallonsToImperialGallons = 0.832674;
}

class OilVolumeToWeightRatios {
  static const double gallonsToKilograms = 3.48;
  static const double gallonsToPounds = 7.66;
}

class WaterVolumeToWeightRatios {
  static const double gallonsToKilograms = 3.79;
  static const double gallonsToPounds = 8.35;
}

class UnpumpedSolidVolumeToWeightRatios {
  static const double gallonsToKilograms = 3.6;
  static const double gallonsToPounds = 8;
}

class Volume extends Equatable {
  final RealDouble _valueInGallons;

  Volume.empty() : _valueInGallons = RealDouble(0);

  factory Volume.parse(String input) => Volume.fromUnits(
        double.tryParse(input) ?? -1,
      );

  factory Volume.fromWeight(RealDouble weight, Materials materialType) {
    final double ratio = si == SI.metric
        ? switch (materialType) {
            Materials.oil => OilVolumeToWeightRatios.gallonsToKilograms,
            Materials.water => WaterVolumeToWeightRatios.gallonsToKilograms,
            Materials.unpumpedSolids =>
              UnpumpedSolidVolumeToWeightRatios.gallonsToKilograms,
          }
        : switch (materialType) {
            Materials.oil => OilVolumeToWeightRatios.gallonsToPounds,
            Materials.water => WaterVolumeToWeightRatios.gallonsToPounds,
            Materials.unpumpedSolids =>
              UnpumpedSolidVolumeToWeightRatios.gallonsToPounds,
          };
    return Volume._fromGallonsUS(weight.getOrCrash / ratio);
  }

  Volume.fromUnits(double units)
      : _valueInGallons = RealDouble(_fromUnitToGallonsUS(units));

  Volume._fromGallonsUS(double input) : _valueInGallons = RealDouble(input);

  bool operator >(Volume other) =>
      _valueInGallons.getOrCrash > other._valueInGallons.getOrCrash;

  Volume operator +(Volume other) => Volume._fromGallonsUS(
        _valueInGallons.getOrCrash + other._valueInGallons.getOrCrash,
      );
  Volume operator -(Volume other) => Volume._fromGallonsUS(
        _valueInGallons.getOrCrash - other._valueInGallons.getOrCrash,
      );
  Volume operator /(num quotient) => Volume._fromGallonsUS(
        _valueInGallons.getOrCrash / quotient,
      );

  Volume operator *(num multiplier) => Volume._fromGallonsUS(
        _valueInGallons.getOrCrash * multiplier,
      );

  int unitsRound() => unitsExact().round();
  double unitsExact() => _fromGallonsUSToUnit(_valueInGallons.getOrCrash);

  bool get isValid => _valueInGallons.value.isValid;
  bool get isInvalid => !isValid;

  B fold<B>(
    B Function(VDoubleError l) ifLeft,
    B Function(double r) ifRight,
  ) =>
      _valueInGallons.value.value.fold(
        (l) => ifLeft(l),
        (r) => ifRight(r),
      );

  @override
  List<Object?> get props => [_valueInGallons];

  static double _fromUnitToGallonsUS(double unit) {
    switch (si) {
      case SI.metric:
        return unit / VolumeToVolumeRatios.gallonsToLiters;

      case SI.imperialUS:
        return unit;

      case SI.imperial:
        return unit / VolumeToVolumeRatios.gallonsToImperialGallons;
    }
  }

  static double _fromGallonsUSToUnit(double gallons) {
    switch (si) {
      case SI.metric:
        return gallons * VolumeToVolumeRatios.gallonsToLiters;
      case SI.imperialUS:
        return gallons;
      case SI.imperial:
        return gallons * VolumeToVolumeRatios.gallonsToImperialGallons;
    }
  }

  RealDouble toWeight(Materials materialType) {
    final ratio = si == SI.metric
        ? switch (materialType) {
            Materials.oil => OilVolumeToWeightRatios.gallonsToKilograms,
            Materials.water => WaterVolumeToWeightRatios.gallonsToKilograms,
            Materials.unpumpedSolids =>
              UnpumpedSolidVolumeToWeightRatios.gallonsToKilograms,
          }
        : switch (materialType) {
            Materials.oil => OilVolumeToWeightRatios.gallonsToPounds,
            Materials.water => WaterVolumeToWeightRatios.gallonsToPounds,
            Materials.unpumpedSolids =>
              UnpumpedSolidVolumeToWeightRatios.gallonsToPounds,
          };

    return RealDouble(_valueInGallons.getOrCrash * ratio);
  }
}

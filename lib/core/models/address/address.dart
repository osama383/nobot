import 'package:dart_mappable/dart_mappable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../value_object/value_object.dart';

part 'address.mapper.dart';

@MappableClass()
class Address extends Value with AddressMappable {
  final VString formattedAddress;
  final LatLng location;

  Address(this.formattedAddress, this.location);

  @override
  bool get isValid => formattedAddress.isValid;

  @override
  bool get isInValid => formattedAddress.isInValid;

  // @override
  // get getOrCrash => throw UnimplementedError();

  factory Address.empty() => Address(VString.empty(), const LatLng(0, 0));

  // static Option<Address> tryParse({
  //   required String? formattedAddress,
  //   required String? street,
  //   required String? city,
  //   required String? state,
  //   required String? zipCode,
  //   required String? country,
  //   required String? unitNumber,
  //   required String? latitude,
  //   required String? longitude,
  // }) {
  //   final formattedAddressVO = VString(formattedAddress?.toString());
  //   final lat = double.tryParse(latitude ?? '') ?? 0;
  //   final lng = double.tryParse(longitude ?? '') ?? 0;

  //   if (formattedAddressVO.isInValid) {
  //     return none();
  //   }
  //   return some(
  //     Address(
  //       formattedAddress: formattedAddressVO,
  //       location: GeolocationModel(lat: lat, lng: lng),
  //     ),
  //   );
  // }

  // bool get isValid => formattedAddress.isValid;
}

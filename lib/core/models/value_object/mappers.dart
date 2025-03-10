import 'package:dart_mappable/dart_mappable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nobot/core/models/email/email.dart';

import 'value_object.dart';

class LatLngMapper extends SimpleMapper<LatLng> {
  const LatLngMapper();

  @override
  LatLng decode(dynamic value) {
    final lat = (value as Map<String, dynamic>)['lat'];
    final lng = value['lng'];
    return LatLng(lat, lng);
  }

  @override
  dynamic encode(LatLng self) {
    return {
      'lat': self.latitude,
      'lng': self.longitude,
    };
  }
}

class EmailMapper extends SimpleMapper<EmailAddress> {
  const EmailMapper();

  @override
  EmailAddress decode(dynamic value) {
    return EmailAddress(value as String);
  }

  @override
  dynamic encode(EmailAddress self) {
    return self.getOrCrash;
  }
}

class VStringMapper extends SimpleMapper<VString> {
  const VStringMapper();

  @override
  VString decode(dynamic value) {
    return VString(value as String);
  }

  @override
  dynamic encode(VString self) {
    return self.getOrCrash;
  }
}

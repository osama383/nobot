import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/email/email.dart';

import 'value_object.dart';

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

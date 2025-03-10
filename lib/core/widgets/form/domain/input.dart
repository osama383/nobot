import 'package:flutter/material.dart';
import 'package:nobot/core/models/address/address.dart';
import 'package:nobot/core/widgets/form/view/inputs/address_input.dart';
import 'package:uuid/uuid.dart';

import '../../../models/email/email.dart';
import '../../../models/value_object/value_object.dart';
import '../view/inputs/email_input.dart';
import '../view/inputs/text_input.dart';
import '../view/inputs/vstring_input.dart';

class Input<T extends Value> {
  final String id;
  final String labelText;
  final T value;

  Input._(this.value, this.id, this.labelText);

  static Input<EmailAddress> email(
    EmailAddress e, {
    required String labelText,
  }) =>
      Input._(e, const Uuid().v1(), labelText);

  static Input<VString> vstring(
    VString e, {
    required String labelText,
  }) =>
      Input._(e, const Uuid().v1(), labelText);

  static Input<Address> address(
    Address e, {
    required String labelText,
  }) =>
      Input._(e, const Uuid().v1(), labelText);

  static Input<AlwaysValid<T>> noValidation<T extends Object>(
    T e, {
    required String labelText,
  }) =>
      Input._(AlwaysValid<T>(e), const Uuid().v1(), labelText);

  Input<T> copyWith(T newValue) {
    return Input<T>._(newValue, id, labelText);
  }

  Widget build(BuildContext context) {
    return switch (this) {
      Input<EmailAddress> e => EmailInput(e, labelText: labelText),
      Input<VString> e => VStringInput(e, labelText: labelText),
      Input<Address> e => AddressInput(e, labelText: labelText),
      Input<AlwaysValid<String>> e => TextInput(e, labelText: labelText),
      Input<T>() => const Placeholder(),
    };
  }
}

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../../models/email/email.dart';
import '../../../models/value_object/value_object.dart';
import '../view/inputs/email_input.dart';
import '../view/inputs/text_input.dart';
import '../view/inputs/vstring_input.dart';

class Input<T extends ValueObject> {
  final String id;
  final T value;

  Input._(this.value, this.id);

  static Input<EmailAddress> email(EmailAddress e) {
    return Input<EmailAddress>._(e, const Uuid().v1());
  }

  static Input<AlwaysValid<T>> noValidation<T extends Object>(T e) {
    return Input._(AlwaysValid<T>(e), const Uuid().v1());
  }

  static Input<VString> vstring(VString e) {
    return Input<VString>._(e, const Uuid().v1());
  }

  Input<T> copyWith(T newValue) {
    return Input<T>._(newValue, id);
  }

  Widget build(BuildContext context) {
    return switch (this) {
      Input<EmailAddress> e => EmailInput(e),
      Input<VString> e => VStringInput(e),
      Input<AlwaysValid<String>> e => TextInput(e),
      Input<T>() => const Placeholder(),
    };
  }
}

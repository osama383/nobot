import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/value_object.dart';

part 'email.freezed.dart';

class EmailAddress extends ValueObject<EmailError, String> {
  EmailAddress(String input) : super(validate(input));
  factory EmailAddress.empty() => EmailAddress('');
  static Either<EmailError, String> validate(String input) {
    if (input.isEmpty) return right(input);
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?",
    );
    if (emailRegex.hasMatch(input)) {
      return right(input);
    } else {
      return left(EmailError.invalidFormat(input));
    }
  }
}

@freezed
class EmailError with _$EmailError {
  const EmailError._();
  factory EmailError.invalidFormat(String input) = _InvalidFormat;
  factory EmailError.empty() = _Empty;

  String get asString {
    return map(
      invalidFormat: (invalidFormat) => invalidFormat.input,
      empty: (empty) => '',
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EmailError && other.asString == asString;
  }

  @override
  int get hashCode => asString.hashCode;

  @override
  String toString() => asString;
}

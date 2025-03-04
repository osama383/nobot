import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/value_object.dart';

part 'password.freezed.dart';

class Password extends ValueObject<PasswordError, String> {
  Password(String input) : super(validate(input));
  factory Password.empty() => Password('');
  static Either<PasswordError, String> validate(String input) {
    if (input.length > 4) {
      return right(input);
    } else {
      return left(PasswordError.tooShort(input));
    }
  }
}

@freezed
sealed class PasswordError with _$PasswordError {
  const PasswordError._();
  factory PasswordError.tooShort(String input) = _PasswordTooShort;
}

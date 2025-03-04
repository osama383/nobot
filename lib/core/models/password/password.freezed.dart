// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordError {
  String get input => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordTooShort value) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordTooShort value)? tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordTooShort value)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordErrorCopyWith<PasswordError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordErrorCopyWith<$Res> {
  factory $PasswordErrorCopyWith(
          PasswordError value, $Res Function(PasswordError) then) =
      _$PasswordErrorCopyWithImpl<$Res, PasswordError>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class _$PasswordErrorCopyWithImpl<$Res, $Val extends PasswordError>
    implements $PasswordErrorCopyWith<$Res> {
  _$PasswordErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordTooShortImplCopyWith<$Res>
    implements $PasswordErrorCopyWith<$Res> {
  factory _$$PasswordTooShortImplCopyWith(_$PasswordTooShortImpl value,
          $Res Function(_$PasswordTooShortImpl) then) =
      __$$PasswordTooShortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$PasswordTooShortImplCopyWithImpl<$Res>
    extends _$PasswordErrorCopyWithImpl<$Res, _$PasswordTooShortImpl>
    implements _$$PasswordTooShortImplCopyWith<$Res> {
  __$$PasswordTooShortImplCopyWithImpl(_$PasswordTooShortImpl _value,
      $Res Function(_$PasswordTooShortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$PasswordTooShortImpl(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordTooShortImpl extends _PasswordTooShort {
  _$PasswordTooShortImpl(this.input) : super._();

  @override
  final String input;

  @override
  String toString() {
    return 'PasswordError.tooShort(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordTooShortImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordTooShortImplCopyWith<_$PasswordTooShortImpl> get copyWith =>
      __$$PasswordTooShortImplCopyWithImpl<_$PasswordTooShortImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) tooShort,
  }) {
    return tooShort(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? tooShort,
  }) {
    return tooShort?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordTooShort value) tooShort,
  }) {
    return tooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordTooShort value)? tooShort,
  }) {
    return tooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordTooShort value)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(this);
    }
    return orElse();
  }
}

abstract class _PasswordTooShort extends PasswordError {
  factory _PasswordTooShort(final String input) = _$PasswordTooShortImpl;
  _PasswordTooShort._() : super._();

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  _$$PasswordTooShortImplCopyWith<_$PasswordTooShortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

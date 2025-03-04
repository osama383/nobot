// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress input) onEmailInput,
    required TResult Function(String input) onPasswordInput,
    required TResult Function() onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress input)? onEmailInput,
    TResult? Function(String input)? onPasswordInput,
    TResult? Function()? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress input)? onEmailInput,
    TResult Function(String input)? onPasswordInput,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailInput value) onEmailInput,
    required TResult Function(_OnPasswordInput value) onPasswordInput,
    required TResult Function(_OnSubmit value) onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnEmailInput value)? onEmailInput,
    TResult? Function(_OnPasswordInput value)? onPasswordInput,
    TResult? Function(_OnSubmit value)? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailInput value)? onEmailInput,
    TResult Function(_OnPasswordInput value)? onPasswordInput,
    TResult Function(_OnSubmit value)? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res, LoginFormEvent>;
}

/// @nodoc
class _$LoginFormEventCopyWithImpl<$Res, $Val extends LoginFormEvent>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnEmailInputImplCopyWith<$Res> {
  factory _$$OnEmailInputImplCopyWith(
          _$OnEmailInputImpl value, $Res Function(_$OnEmailInputImpl) then) =
      __$$OnEmailInputImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailAddress input});
}

/// @nodoc
class __$$OnEmailInputImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$OnEmailInputImpl>
    implements _$$OnEmailInputImplCopyWith<$Res> {
  __$$OnEmailInputImplCopyWithImpl(
      _$OnEmailInputImpl _value, $Res Function(_$OnEmailInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$OnEmailInputImpl(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$OnEmailInputImpl implements _OnEmailInput {
  const _$OnEmailInputImpl(this.input);

  @override
  final EmailAddress input;

  @override
  String toString() {
    return 'LoginFormEvent.onEmailInput(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEmailInputImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEmailInputImplCopyWith<_$OnEmailInputImpl> get copyWith =>
      __$$OnEmailInputImplCopyWithImpl<_$OnEmailInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress input) onEmailInput,
    required TResult Function(String input) onPasswordInput,
    required TResult Function() onSubmit,
  }) {
    return onEmailInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress input)? onEmailInput,
    TResult? Function(String input)? onPasswordInput,
    TResult? Function()? onSubmit,
  }) {
    return onEmailInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress input)? onEmailInput,
    TResult Function(String input)? onPasswordInput,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onEmailInput != null) {
      return onEmailInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailInput value) onEmailInput,
    required TResult Function(_OnPasswordInput value) onPasswordInput,
    required TResult Function(_OnSubmit value) onSubmit,
  }) {
    return onEmailInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnEmailInput value)? onEmailInput,
    TResult? Function(_OnPasswordInput value)? onPasswordInput,
    TResult? Function(_OnSubmit value)? onSubmit,
  }) {
    return onEmailInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailInput value)? onEmailInput,
    TResult Function(_OnPasswordInput value)? onPasswordInput,
    TResult Function(_OnSubmit value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onEmailInput != null) {
      return onEmailInput(this);
    }
    return orElse();
  }
}

abstract class _OnEmailInput implements LoginFormEvent {
  const factory _OnEmailInput(final EmailAddress input) = _$OnEmailInputImpl;

  EmailAddress get input;
  @JsonKey(ignore: true)
  _$$OnEmailInputImplCopyWith<_$OnEmailInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPasswordInputImplCopyWith<$Res> {
  factory _$$OnPasswordInputImplCopyWith(_$OnPasswordInputImpl value,
          $Res Function(_$OnPasswordInputImpl) then) =
      __$$OnPasswordInputImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$OnPasswordInputImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$OnPasswordInputImpl>
    implements _$$OnPasswordInputImplCopyWith<$Res> {
  __$$OnPasswordInputImplCopyWithImpl(
      _$OnPasswordInputImpl _value, $Res Function(_$OnPasswordInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$OnPasswordInputImpl(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPasswordInputImpl implements _OnPasswordInput {
  const _$OnPasswordInputImpl(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'LoginFormEvent.onPasswordInput(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPasswordInputImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPasswordInputImplCopyWith<_$OnPasswordInputImpl> get copyWith =>
      __$$OnPasswordInputImplCopyWithImpl<_$OnPasswordInputImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress input) onEmailInput,
    required TResult Function(String input) onPasswordInput,
    required TResult Function() onSubmit,
  }) {
    return onPasswordInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress input)? onEmailInput,
    TResult? Function(String input)? onPasswordInput,
    TResult? Function()? onSubmit,
  }) {
    return onPasswordInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress input)? onEmailInput,
    TResult Function(String input)? onPasswordInput,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onPasswordInput != null) {
      return onPasswordInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailInput value) onEmailInput,
    required TResult Function(_OnPasswordInput value) onPasswordInput,
    required TResult Function(_OnSubmit value) onSubmit,
  }) {
    return onPasswordInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnEmailInput value)? onEmailInput,
    TResult? Function(_OnPasswordInput value)? onPasswordInput,
    TResult? Function(_OnSubmit value)? onSubmit,
  }) {
    return onPasswordInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailInput value)? onEmailInput,
    TResult Function(_OnPasswordInput value)? onPasswordInput,
    TResult Function(_OnSubmit value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onPasswordInput != null) {
      return onPasswordInput(this);
    }
    return orElse();
  }
}

abstract class _OnPasswordInput implements LoginFormEvent {
  const factory _OnPasswordInput(final String input) = _$OnPasswordInputImpl;

  String get input;
  @JsonKey(ignore: true)
  _$$OnPasswordInputImplCopyWith<_$OnPasswordInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSubmitImplCopyWith<$Res> {
  factory _$$OnSubmitImplCopyWith(
          _$OnSubmitImpl value, $Res Function(_$OnSubmitImpl) then) =
      __$$OnSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSubmitImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$OnSubmitImpl>
    implements _$$OnSubmitImplCopyWith<$Res> {
  __$$OnSubmitImplCopyWithImpl(
      _$OnSubmitImpl _value, $Res Function(_$OnSubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnSubmitImpl implements _OnSubmit {
  const _$OnSubmitImpl();

  @override
  String toString() {
    return 'LoginFormEvent.onSubmit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress input) onEmailInput,
    required TResult Function(String input) onPasswordInput,
    required TResult Function() onSubmit,
  }) {
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmailAddress input)? onEmailInput,
    TResult? Function(String input)? onPasswordInput,
    TResult? Function()? onSubmit,
  }) {
    return onSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress input)? onEmailInput,
    TResult Function(String input)? onPasswordInput,
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailInput value) onEmailInput,
    required TResult Function(_OnPasswordInput value) onPasswordInput,
    required TResult Function(_OnSubmit value) onSubmit,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnEmailInput value)? onEmailInput,
    TResult? Function(_OnPasswordInput value)? onPasswordInput,
    TResult? Function(_OnSubmit value)? onSubmit,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailInput value)? onEmailInput,
    TResult Function(_OnPasswordInput value)? onPasswordInput,
    TResult Function(_OnSubmit value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class _OnSubmit implements LoginFormEvent {
  const factory _OnSubmit() = _$OnSubmitImpl;
}

/// @nodoc
mixin _$LoginFormState {
  EmailAddress get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get submissionInProgress => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get resultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res, LoginFormState>;
  @useResult
  $Res call(
      {EmailAddress email,
      String password,
      bool submissionInProgress,
      bool showErrors,
      Option<Either<Failure, Unit>> resultOption});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res, $Val extends LoginFormState>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? submissionInProgress = null,
    Object? showErrors = null,
    Object? resultOption = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      submissionInProgress: null == submissionInProgress
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: null == resultOption
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormStateImplCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$LoginFormStateImplCopyWith(_$LoginFormStateImpl value,
          $Res Function(_$LoginFormStateImpl) then) =
      __$$LoginFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress email,
      String password,
      bool submissionInProgress,
      bool showErrors,
      Option<Either<Failure, Unit>> resultOption});
}

/// @nodoc
class __$$LoginFormStateImplCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res, _$LoginFormStateImpl>
    implements _$$LoginFormStateImplCopyWith<$Res> {
  __$$LoginFormStateImplCopyWithImpl(
      _$LoginFormStateImpl _value, $Res Function(_$LoginFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? submissionInProgress = null,
    Object? showErrors = null,
    Object? resultOption = null,
  }) {
    return _then(_$LoginFormStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      submissionInProgress: null == submissionInProgress
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: null == showErrors
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: null == resultOption
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$LoginFormStateImpl implements _LoginFormState {
  const _$LoginFormStateImpl(
      {required this.email,
      required this.password,
      required this.submissionInProgress,
      required this.showErrors,
      required this.resultOption});

  @override
  final EmailAddress email;
  @override
  final String password;
  @override
  final bool submissionInProgress;
  @override
  final bool showErrors;
  @override
  final Option<Either<Failure, Unit>> resultOption;

  @override
  String toString() {
    return 'LoginFormState(email: $email, password: $password, submissionInProgress: $submissionInProgress, showErrors: $showErrors, resultOption: $resultOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.submissionInProgress, submissionInProgress) ||
                other.submissionInProgress == submissionInProgress) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            (identical(other.resultOption, resultOption) ||
                other.resultOption == resultOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password,
      submissionInProgress, showErrors, resultOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      __$$LoginFormStateImplCopyWithImpl<_$LoginFormStateImpl>(
          this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
          {required final EmailAddress email,
          required final String password,
          required final bool submissionInProgress,
          required final bool showErrors,
          required final Option<Either<Failure, Unit>> resultOption}) =
      _$LoginFormStateImpl;

  @override
  EmailAddress get email;
  @override
  String get password;
  @override
  bool get submissionInProgress;
  @override
  bool get showErrors;
  @override
  Option<Either<Failure, Unit>> get resultOption;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

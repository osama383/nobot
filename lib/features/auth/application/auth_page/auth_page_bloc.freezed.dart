// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthPageEvent {
  AuthMode get mode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthMode mode) onModeChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthMode mode)? onModeChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthMode mode)? onModeChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnModeChange value) onModeChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnModeChange value)? onModeChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnModeChange value)? onModeChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPageEventCopyWith<AuthPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageEventCopyWith<$Res> {
  factory $AuthPageEventCopyWith(
          AuthPageEvent value, $Res Function(AuthPageEvent) then) =
      _$AuthPageEventCopyWithImpl<$Res, AuthPageEvent>;
  @useResult
  $Res call({AuthMode mode});
}

/// @nodoc
class _$AuthPageEventCopyWithImpl<$Res, $Val extends AuthPageEvent>
    implements $AuthPageEventCopyWith<$Res> {
  _$AuthPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnModeChangeImplCopyWith<$Res>
    implements $AuthPageEventCopyWith<$Res> {
  factory _$$OnModeChangeImplCopyWith(
          _$OnModeChangeImpl value, $Res Function(_$OnModeChangeImpl) then) =
      __$$OnModeChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthMode mode});
}

/// @nodoc
class __$$OnModeChangeImplCopyWithImpl<$Res>
    extends _$AuthPageEventCopyWithImpl<$Res, _$OnModeChangeImpl>
    implements _$$OnModeChangeImplCopyWith<$Res> {
  __$$OnModeChangeImplCopyWithImpl(
      _$OnModeChangeImpl _value, $Res Function(_$OnModeChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$OnModeChangeImpl(
      null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthMode,
    ));
  }
}

/// @nodoc

class _$OnModeChangeImpl implements _OnModeChange {
  const _$OnModeChangeImpl(this.mode);

  @override
  final AuthMode mode;

  @override
  String toString() {
    return 'AuthPageEvent.onModeChange(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnModeChangeImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnModeChangeImplCopyWith<_$OnModeChangeImpl> get copyWith =>
      __$$OnModeChangeImplCopyWithImpl<_$OnModeChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthMode mode) onModeChange,
  }) {
    return onModeChange(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthMode mode)? onModeChange,
  }) {
    return onModeChange?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthMode mode)? onModeChange,
    required TResult orElse(),
  }) {
    if (onModeChange != null) {
      return onModeChange(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnModeChange value) onModeChange,
  }) {
    return onModeChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnModeChange value)? onModeChange,
  }) {
    return onModeChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnModeChange value)? onModeChange,
    required TResult orElse(),
  }) {
    if (onModeChange != null) {
      return onModeChange(this);
    }
    return orElse();
  }
}

abstract class _OnModeChange implements AuthPageEvent {
  const factory _OnModeChange(final AuthMode mode) = _$OnModeChangeImpl;

  @override
  AuthMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$OnModeChangeImplCopyWith<_$OnModeChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthPageState {
  AuthMode get mode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPageStateCopyWith<AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res, AuthPageState>;
  @useResult
  $Res call({AuthMode mode});
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res, $Val extends AuthPageState>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthPageStateImplCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$$AuthPageStateImplCopyWith(
          _$AuthPageStateImpl value, $Res Function(_$AuthPageStateImpl) then) =
      __$$AuthPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthMode mode});
}

/// @nodoc
class __$$AuthPageStateImplCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$AuthPageStateImpl>
    implements _$$AuthPageStateImplCopyWith<$Res> {
  __$$AuthPageStateImplCopyWithImpl(
      _$AuthPageStateImpl _value, $Res Function(_$AuthPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$AuthPageStateImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AuthMode,
    ));
  }
}

/// @nodoc

class _$AuthPageStateImpl implements _AuthPageState {
  const _$AuthPageStateImpl({required this.mode});

  @override
  final AuthMode mode;

  @override
  String toString() {
    return 'AuthPageState(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPageStateImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthPageStateImplCopyWith<_$AuthPageStateImpl> get copyWith =>
      __$$AuthPageStateImplCopyWithImpl<_$AuthPageStateImpl>(this, _$identity);
}

abstract class _AuthPageState implements AuthPageState {
  const factory _AuthPageState({required final AuthMode mode}) =
      _$AuthPageStateImpl;

  @override
  AuthMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$AuthPageStateImplCopyWith<_$AuthPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

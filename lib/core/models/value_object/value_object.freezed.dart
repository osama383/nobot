// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VIntError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) notAnInt,
    required TResult Function(int number) tooHigh,
    required TResult Function(int number) tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? notAnInt,
    TResult? Function(int number)? tooHigh,
    TResult? Function(int number)? tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? notAnInt,
    TResult Function(int number)? tooHigh,
    TResult Function(int number)? tooLow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAnInt value) notAnInt,
    required TResult Function(_TooHighInt value) tooHigh,
    required TResult Function(_TooLowInt value) tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAnInt value)? notAnInt,
    TResult? Function(_TooHighInt value)? tooHigh,
    TResult? Function(_TooLowInt value)? tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAnInt value)? notAnInt,
    TResult Function(_TooHighInt value)? tooHigh,
    TResult Function(_TooLowInt value)? tooLow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VIntErrorCopyWith<$Res> {
  factory $VIntErrorCopyWith(VIntError value, $Res Function(VIntError) then) =
      _$VIntErrorCopyWithImpl<$Res, VIntError>;
}

/// @nodoc
class _$VIntErrorCopyWithImpl<$Res, $Val extends VIntError>
    implements $VIntErrorCopyWith<$Res> {
  _$VIntErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotAnIntImplCopyWith<$Res> {
  factory _$$NotAnIntImplCopyWith(
          _$NotAnIntImpl value, $Res Function(_$NotAnIntImpl) then) =
      __$$NotAnIntImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$NotAnIntImplCopyWithImpl<$Res>
    extends _$VIntErrorCopyWithImpl<$Res, _$NotAnIntImpl>
    implements _$$NotAnIntImplCopyWith<$Res> {
  __$$NotAnIntImplCopyWithImpl(
      _$NotAnIntImpl _value, $Res Function(_$NotAnIntImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$NotAnIntImpl(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotAnIntImpl extends _NotAnInt {
  _$NotAnIntImpl(this.input) : super._();

  @override
  final String input;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotAnIntImplCopyWith<_$NotAnIntImpl> get copyWith =>
      __$$NotAnIntImplCopyWithImpl<_$NotAnIntImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) notAnInt,
    required TResult Function(int number) tooHigh,
    required TResult Function(int number) tooLow,
  }) {
    return notAnInt(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? notAnInt,
    TResult? Function(int number)? tooHigh,
    TResult? Function(int number)? tooLow,
  }) {
    return notAnInt?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? notAnInt,
    TResult Function(int number)? tooHigh,
    TResult Function(int number)? tooLow,
    required TResult orElse(),
  }) {
    if (notAnInt != null) {
      return notAnInt(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAnInt value) notAnInt,
    required TResult Function(_TooHighInt value) tooHigh,
    required TResult Function(_TooLowInt value) tooLow,
  }) {
    return notAnInt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAnInt value)? notAnInt,
    TResult? Function(_TooHighInt value)? tooHigh,
    TResult? Function(_TooLowInt value)? tooLow,
  }) {
    return notAnInt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAnInt value)? notAnInt,
    TResult Function(_TooHighInt value)? tooHigh,
    TResult Function(_TooLowInt value)? tooLow,
    required TResult orElse(),
  }) {
    if (notAnInt != null) {
      return notAnInt(this);
    }
    return orElse();
  }
}

abstract class _NotAnInt extends VIntError {
  factory _NotAnInt(final String input) = _$NotAnIntImpl;
  _NotAnInt._() : super._();

  String get input;
  @JsonKey(ignore: true)
  _$$NotAnIntImplCopyWith<_$NotAnIntImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooHighIntImplCopyWith<$Res> {
  factory _$$TooHighIntImplCopyWith(
          _$TooHighIntImpl value, $Res Function(_$TooHighIntImpl) then) =
      __$$TooHighIntImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$TooHighIntImplCopyWithImpl<$Res>
    extends _$VIntErrorCopyWithImpl<$Res, _$TooHighIntImpl>
    implements _$$TooHighIntImplCopyWith<$Res> {
  __$$TooHighIntImplCopyWithImpl(
      _$TooHighIntImpl _value, $Res Function(_$TooHighIntImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$TooHighIntImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TooHighIntImpl extends _TooHighInt {
  _$TooHighIntImpl(this.number) : super._();

  @override
  final int number;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooHighIntImplCopyWith<_$TooHighIntImpl> get copyWith =>
      __$$TooHighIntImplCopyWithImpl<_$TooHighIntImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) notAnInt,
    required TResult Function(int number) tooHigh,
    required TResult Function(int number) tooLow,
  }) {
    return tooHigh(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? notAnInt,
    TResult? Function(int number)? tooHigh,
    TResult? Function(int number)? tooLow,
  }) {
    return tooHigh?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? notAnInt,
    TResult Function(int number)? tooHigh,
    TResult Function(int number)? tooLow,
    required TResult orElse(),
  }) {
    if (tooHigh != null) {
      return tooHigh(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAnInt value) notAnInt,
    required TResult Function(_TooHighInt value) tooHigh,
    required TResult Function(_TooLowInt value) tooLow,
  }) {
    return tooHigh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAnInt value)? notAnInt,
    TResult? Function(_TooHighInt value)? tooHigh,
    TResult? Function(_TooLowInt value)? tooLow,
  }) {
    return tooHigh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAnInt value)? notAnInt,
    TResult Function(_TooHighInt value)? tooHigh,
    TResult Function(_TooLowInt value)? tooLow,
    required TResult orElse(),
  }) {
    if (tooHigh != null) {
      return tooHigh(this);
    }
    return orElse();
  }
}

abstract class _TooHighInt extends VIntError {
  factory _TooHighInt(final int number) = _$TooHighIntImpl;
  _TooHighInt._() : super._();

  int get number;
  @JsonKey(ignore: true)
  _$$TooHighIntImplCopyWith<_$TooHighIntImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooLowIntImplCopyWith<$Res> {
  factory _$$TooLowIntImplCopyWith(
          _$TooLowIntImpl value, $Res Function(_$TooLowIntImpl) then) =
      __$$TooLowIntImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$TooLowIntImplCopyWithImpl<$Res>
    extends _$VIntErrorCopyWithImpl<$Res, _$TooLowIntImpl>
    implements _$$TooLowIntImplCopyWith<$Res> {
  __$$TooLowIntImplCopyWithImpl(
      _$TooLowIntImpl _value, $Res Function(_$TooLowIntImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$TooLowIntImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TooLowIntImpl extends _TooLowInt {
  _$TooLowIntImpl(this.number) : super._();

  @override
  final int number;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooLowIntImplCopyWith<_$TooLowIntImpl> get copyWith =>
      __$$TooLowIntImplCopyWithImpl<_$TooLowIntImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) notAnInt,
    required TResult Function(int number) tooHigh,
    required TResult Function(int number) tooLow,
  }) {
    return tooLow(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? notAnInt,
    TResult? Function(int number)? tooHigh,
    TResult? Function(int number)? tooLow,
  }) {
    return tooLow?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? notAnInt,
    TResult Function(int number)? tooHigh,
    TResult Function(int number)? tooLow,
    required TResult orElse(),
  }) {
    if (tooLow != null) {
      return tooLow(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAnInt value) notAnInt,
    required TResult Function(_TooHighInt value) tooHigh,
    required TResult Function(_TooLowInt value) tooLow,
  }) {
    return tooLow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAnInt value)? notAnInt,
    TResult? Function(_TooHighInt value)? tooHigh,
    TResult? Function(_TooLowInt value)? tooLow,
  }) {
    return tooLow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAnInt value)? notAnInt,
    TResult Function(_TooHighInt value)? tooHigh,
    TResult Function(_TooLowInt value)? tooLow,
    required TResult orElse(),
  }) {
    if (tooLow != null) {
      return tooLow(this);
    }
    return orElse();
  }
}

abstract class _TooLowInt extends VIntError {
  factory _TooLowInt(final int number) = _$TooLowIntImpl;
  _TooLowInt._() : super._();

  int get number;
  @JsonKey(ignore: true)
  _$$TooLowIntImplCopyWith<_$TooLowIntImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VDoubleError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) notADouble,
    required TResult Function(double number) tooHigh,
    required TResult Function(double number) tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? notADouble,
    TResult? Function(double number)? tooHigh,
    TResult? Function(double number)? tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? notADouble,
    TResult Function(double number)? tooHigh,
    TResult Function(double number)? tooLow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotADouble value) notADouble,
    required TResult Function(_TooHighDouble value) tooHigh,
    required TResult Function(_TooLowDouble value) tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotADouble value)? notADouble,
    TResult? Function(_TooHighDouble value)? tooHigh,
    TResult? Function(_TooLowDouble value)? tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotADouble value)? notADouble,
    TResult Function(_TooHighDouble value)? tooHigh,
    TResult Function(_TooLowDouble value)? tooLow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VDoubleErrorCopyWith<$Res> {
  factory $VDoubleErrorCopyWith(
          VDoubleError value, $Res Function(VDoubleError) then) =
      _$VDoubleErrorCopyWithImpl<$Res, VDoubleError>;
}

/// @nodoc
class _$VDoubleErrorCopyWithImpl<$Res, $Val extends VDoubleError>
    implements $VDoubleErrorCopyWith<$Res> {
  _$VDoubleErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotADoubleImplCopyWith<$Res> {
  factory _$$NotADoubleImplCopyWith(
          _$NotADoubleImpl value, $Res Function(_$NotADoubleImpl) then) =
      __$$NotADoubleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$NotADoubleImplCopyWithImpl<$Res>
    extends _$VDoubleErrorCopyWithImpl<$Res, _$NotADoubleImpl>
    implements _$$NotADoubleImplCopyWith<$Res> {
  __$$NotADoubleImplCopyWithImpl(
      _$NotADoubleImpl _value, $Res Function(_$NotADoubleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$NotADoubleImpl(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotADoubleImpl extends _NotADouble {
  _$NotADoubleImpl(this.input) : super._();

  @override
  final String input;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotADoubleImplCopyWith<_$NotADoubleImpl> get copyWith =>
      __$$NotADoubleImplCopyWithImpl<_$NotADoubleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) notADouble,
    required TResult Function(double number) tooHigh,
    required TResult Function(double number) tooLow,
  }) {
    return notADouble(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? notADouble,
    TResult? Function(double number)? tooHigh,
    TResult? Function(double number)? tooLow,
  }) {
    return notADouble?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? notADouble,
    TResult Function(double number)? tooHigh,
    TResult Function(double number)? tooLow,
    required TResult orElse(),
  }) {
    if (notADouble != null) {
      return notADouble(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotADouble value) notADouble,
    required TResult Function(_TooHighDouble value) tooHigh,
    required TResult Function(_TooLowDouble value) tooLow,
  }) {
    return notADouble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotADouble value)? notADouble,
    TResult? Function(_TooHighDouble value)? tooHigh,
    TResult? Function(_TooLowDouble value)? tooLow,
  }) {
    return notADouble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotADouble value)? notADouble,
    TResult Function(_TooHighDouble value)? tooHigh,
    TResult Function(_TooLowDouble value)? tooLow,
    required TResult orElse(),
  }) {
    if (notADouble != null) {
      return notADouble(this);
    }
    return orElse();
  }
}

abstract class _NotADouble extends VDoubleError {
  factory _NotADouble(final String input) = _$NotADoubleImpl;
  _NotADouble._() : super._();

  String get input;
  @JsonKey(ignore: true)
  _$$NotADoubleImplCopyWith<_$NotADoubleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooHighDoubleImplCopyWith<$Res> {
  factory _$$TooHighDoubleImplCopyWith(
          _$TooHighDoubleImpl value, $Res Function(_$TooHighDoubleImpl) then) =
      __$$TooHighDoubleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double number});
}

/// @nodoc
class __$$TooHighDoubleImplCopyWithImpl<$Res>
    extends _$VDoubleErrorCopyWithImpl<$Res, _$TooHighDoubleImpl>
    implements _$$TooHighDoubleImplCopyWith<$Res> {
  __$$TooHighDoubleImplCopyWithImpl(
      _$TooHighDoubleImpl _value, $Res Function(_$TooHighDoubleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$TooHighDoubleImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TooHighDoubleImpl extends _TooHighDouble {
  _$TooHighDoubleImpl(this.number) : super._();

  @override
  final double number;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooHighDoubleImplCopyWith<_$TooHighDoubleImpl> get copyWith =>
      __$$TooHighDoubleImplCopyWithImpl<_$TooHighDoubleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) notADouble,
    required TResult Function(double number) tooHigh,
    required TResult Function(double number) tooLow,
  }) {
    return tooHigh(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? notADouble,
    TResult? Function(double number)? tooHigh,
    TResult? Function(double number)? tooLow,
  }) {
    return tooHigh?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? notADouble,
    TResult Function(double number)? tooHigh,
    TResult Function(double number)? tooLow,
    required TResult orElse(),
  }) {
    if (tooHigh != null) {
      return tooHigh(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotADouble value) notADouble,
    required TResult Function(_TooHighDouble value) tooHigh,
    required TResult Function(_TooLowDouble value) tooLow,
  }) {
    return tooHigh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotADouble value)? notADouble,
    TResult? Function(_TooHighDouble value)? tooHigh,
    TResult? Function(_TooLowDouble value)? tooLow,
  }) {
    return tooHigh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotADouble value)? notADouble,
    TResult Function(_TooHighDouble value)? tooHigh,
    TResult Function(_TooLowDouble value)? tooLow,
    required TResult orElse(),
  }) {
    if (tooHigh != null) {
      return tooHigh(this);
    }
    return orElse();
  }
}

abstract class _TooHighDouble extends VDoubleError {
  factory _TooHighDouble(final double number) = _$TooHighDoubleImpl;
  _TooHighDouble._() : super._();

  double get number;
  @JsonKey(ignore: true)
  _$$TooHighDoubleImplCopyWith<_$TooHighDoubleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooLowDoubleImplCopyWith<$Res> {
  factory _$$TooLowDoubleImplCopyWith(
          _$TooLowDoubleImpl value, $Res Function(_$TooLowDoubleImpl) then) =
      __$$TooLowDoubleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double number});
}

/// @nodoc
class __$$TooLowDoubleImplCopyWithImpl<$Res>
    extends _$VDoubleErrorCopyWithImpl<$Res, _$TooLowDoubleImpl>
    implements _$$TooLowDoubleImplCopyWith<$Res> {
  __$$TooLowDoubleImplCopyWithImpl(
      _$TooLowDoubleImpl _value, $Res Function(_$TooLowDoubleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$TooLowDoubleImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TooLowDoubleImpl extends _TooLowDouble {
  _$TooLowDoubleImpl(this.number) : super._();

  @override
  final double number;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooLowDoubleImplCopyWith<_$TooLowDoubleImpl> get copyWith =>
      __$$TooLowDoubleImplCopyWithImpl<_$TooLowDoubleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) notADouble,
    required TResult Function(double number) tooHigh,
    required TResult Function(double number) tooLow,
  }) {
    return tooLow(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? notADouble,
    TResult? Function(double number)? tooHigh,
    TResult? Function(double number)? tooLow,
  }) {
    return tooLow?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? notADouble,
    TResult Function(double number)? tooHigh,
    TResult Function(double number)? tooLow,
    required TResult orElse(),
  }) {
    if (tooLow != null) {
      return tooLow(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotADouble value) notADouble,
    required TResult Function(_TooHighDouble value) tooHigh,
    required TResult Function(_TooLowDouble value) tooLow,
  }) {
    return tooLow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotADouble value)? notADouble,
    TResult? Function(_TooHighDouble value)? tooHigh,
    TResult? Function(_TooLowDouble value)? tooLow,
  }) {
    return tooLow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotADouble value)? notADouble,
    TResult Function(_TooHighDouble value)? tooHigh,
    TResult Function(_TooLowDouble value)? tooLow,
    required TResult orElse(),
  }) {
    if (tooLow != null) {
      return tooLow(this);
    }
    return orElse();
  }
}

abstract class _TooLowDouble extends VDoubleError {
  factory _TooLowDouble(final double number) = _$TooLowDoubleImpl;
  _TooLowDouble._() : super._();

  double get number;
  @JsonKey(ignore: true)
  _$$TooLowDoubleImplCopyWith<_$TooLowDoubleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

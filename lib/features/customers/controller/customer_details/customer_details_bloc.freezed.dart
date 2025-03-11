// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailsEventCopyWith<$Res> {
  factory $CustomerDetailsEventCopyWith(CustomerDetailsEvent value,
          $Res Function(CustomerDetailsEvent) then) =
      _$CustomerDetailsEventCopyWithImpl<$Res, CustomerDetailsEvent>;
}

/// @nodoc
class _$CustomerDetailsEventCopyWithImpl<$Res,
        $Val extends CustomerDetailsEvent>
    implements $CustomerDetailsEventCopyWith<$Res> {
  _$CustomerDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CustomerDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CustomerDetailsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CustomerDetailsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$CustomerDetailsState {
  Customer get customer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerDetailsStateCopyWith<CustomerDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailsStateCopyWith<$Res> {
  factory $CustomerDetailsStateCopyWith(CustomerDetailsState value,
          $Res Function(CustomerDetailsState) then) =
      _$CustomerDetailsStateCopyWithImpl<$Res, CustomerDetailsState>;
  @useResult
  $Res call({Customer customer});
}

/// @nodoc
class _$CustomerDetailsStateCopyWithImpl<$Res,
        $Val extends CustomerDetailsState>
    implements $CustomerDetailsStateCopyWith<$Res> {
  _$CustomerDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_value.copyWith(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerDetailsStateImplCopyWith<$Res>
    implements $CustomerDetailsStateCopyWith<$Res> {
  factory _$$CustomerDetailsStateImplCopyWith(_$CustomerDetailsStateImpl value,
          $Res Function(_$CustomerDetailsStateImpl) then) =
      __$$CustomerDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Customer customer});
}

/// @nodoc
class __$$CustomerDetailsStateImplCopyWithImpl<$Res>
    extends _$CustomerDetailsStateCopyWithImpl<$Res, _$CustomerDetailsStateImpl>
    implements _$$CustomerDetailsStateImplCopyWith<$Res> {
  __$$CustomerDetailsStateImplCopyWithImpl(_$CustomerDetailsStateImpl _value,
      $Res Function(_$CustomerDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$CustomerDetailsStateImpl(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }
}

/// @nodoc

class _$CustomerDetailsStateImpl implements _CustomerDetailsState {
  const _$CustomerDetailsStateImpl({required this.customer});

  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerDetailsState(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDetailsStateImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDetailsStateImplCopyWith<_$CustomerDetailsStateImpl>
      get copyWith =>
          __$$CustomerDetailsStateImplCopyWithImpl<_$CustomerDetailsStateImpl>(
              this, _$identity);
}

abstract class _CustomerDetailsState implements CustomerDetailsState {
  const factory _CustomerDetailsState({required final Customer customer}) =
      _$CustomerDetailsStateImpl;

  @override
  Customer get customer;
  @override
  @JsonKey(ignore: true)
  _$$CustomerDetailsStateImplCopyWith<_$CustomerDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

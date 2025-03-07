// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchDepots,
    required TResult Function() fetchVehicles,
    required TResult Function() fetchContainers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDepots,
    TResult? Function()? fetchVehicles,
    TResult? Function()? fetchContainers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDepots,
    TResult Function()? fetchVehicles,
    TResult Function()? fetchContainers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchDepots value) fetchDepots,
    required TResult Function(_FetchVehicles value) fetchVehicles,
    required TResult Function(_FetchContainers value) fetchContainers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDepots value)? fetchDepots,
    TResult? Function(_FetchVehicles value)? fetchVehicles,
    TResult? Function(_FetchContainers value)? fetchContainers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDepots value)? fetchDepots,
    TResult Function(_FetchVehicles value)? fetchVehicles,
    TResult Function(_FetchContainers value)? fetchContainers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsEventCopyWith<$Res> {
  factory $AssetsEventCopyWith(
          AssetsEvent value, $Res Function(AssetsEvent) then) =
      _$AssetsEventCopyWithImpl<$Res, AssetsEvent>;
}

/// @nodoc
class _$AssetsEventCopyWithImpl<$Res, $Val extends AssetsEvent>
    implements $AssetsEventCopyWith<$Res> {
  _$AssetsEventCopyWithImpl(this._value, this._then);

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
    extends _$AssetsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AssetsEvent.started()';
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
    required TResult Function() fetchDepots,
    required TResult Function() fetchVehicles,
    required TResult Function() fetchContainers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDepots,
    TResult? Function()? fetchVehicles,
    TResult? Function()? fetchContainers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDepots,
    TResult Function()? fetchVehicles,
    TResult Function()? fetchContainers,
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
    required TResult Function(_FetchDepots value) fetchDepots,
    required TResult Function(_FetchVehicles value) fetchVehicles,
    required TResult Function(_FetchContainers value) fetchContainers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDepots value)? fetchDepots,
    TResult? Function(_FetchVehicles value)? fetchVehicles,
    TResult? Function(_FetchContainers value)? fetchContainers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDepots value)? fetchDepots,
    TResult Function(_FetchVehicles value)? fetchVehicles,
    TResult Function(_FetchContainers value)? fetchContainers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AssetsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchDepotsImplCopyWith<$Res> {
  factory _$$FetchDepotsImplCopyWith(
          _$FetchDepotsImpl value, $Res Function(_$FetchDepotsImpl) then) =
      __$$FetchDepotsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDepotsImplCopyWithImpl<$Res>
    extends _$AssetsEventCopyWithImpl<$Res, _$FetchDepotsImpl>
    implements _$$FetchDepotsImplCopyWith<$Res> {
  __$$FetchDepotsImplCopyWithImpl(
      _$FetchDepotsImpl _value, $Res Function(_$FetchDepotsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDepotsImpl implements _FetchDepots {
  const _$FetchDepotsImpl();

  @override
  String toString() {
    return 'AssetsEvent.fetchDepots()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDepotsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchDepots,
    required TResult Function() fetchVehicles,
    required TResult Function() fetchContainers,
  }) {
    return fetchDepots();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDepots,
    TResult? Function()? fetchVehicles,
    TResult? Function()? fetchContainers,
  }) {
    return fetchDepots?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDepots,
    TResult Function()? fetchVehicles,
    TResult Function()? fetchContainers,
    required TResult orElse(),
  }) {
    if (fetchDepots != null) {
      return fetchDepots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchDepots value) fetchDepots,
    required TResult Function(_FetchVehicles value) fetchVehicles,
    required TResult Function(_FetchContainers value) fetchContainers,
  }) {
    return fetchDepots(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDepots value)? fetchDepots,
    TResult? Function(_FetchVehicles value)? fetchVehicles,
    TResult? Function(_FetchContainers value)? fetchContainers,
  }) {
    return fetchDepots?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDepots value)? fetchDepots,
    TResult Function(_FetchVehicles value)? fetchVehicles,
    TResult Function(_FetchContainers value)? fetchContainers,
    required TResult orElse(),
  }) {
    if (fetchDepots != null) {
      return fetchDepots(this);
    }
    return orElse();
  }
}

abstract class _FetchDepots implements AssetsEvent {
  const factory _FetchDepots() = _$FetchDepotsImpl;
}

/// @nodoc
abstract class _$$FetchVehiclesImplCopyWith<$Res> {
  factory _$$FetchVehiclesImplCopyWith(
          _$FetchVehiclesImpl value, $Res Function(_$FetchVehiclesImpl) then) =
      __$$FetchVehiclesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchVehiclesImplCopyWithImpl<$Res>
    extends _$AssetsEventCopyWithImpl<$Res, _$FetchVehiclesImpl>
    implements _$$FetchVehiclesImplCopyWith<$Res> {
  __$$FetchVehiclesImplCopyWithImpl(
      _$FetchVehiclesImpl _value, $Res Function(_$FetchVehiclesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchVehiclesImpl implements _FetchVehicles {
  const _$FetchVehiclesImpl();

  @override
  String toString() {
    return 'AssetsEvent.fetchVehicles()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchVehiclesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchDepots,
    required TResult Function() fetchVehicles,
    required TResult Function() fetchContainers,
  }) {
    return fetchVehicles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDepots,
    TResult? Function()? fetchVehicles,
    TResult? Function()? fetchContainers,
  }) {
    return fetchVehicles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDepots,
    TResult Function()? fetchVehicles,
    TResult Function()? fetchContainers,
    required TResult orElse(),
  }) {
    if (fetchVehicles != null) {
      return fetchVehicles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchDepots value) fetchDepots,
    required TResult Function(_FetchVehicles value) fetchVehicles,
    required TResult Function(_FetchContainers value) fetchContainers,
  }) {
    return fetchVehicles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDepots value)? fetchDepots,
    TResult? Function(_FetchVehicles value)? fetchVehicles,
    TResult? Function(_FetchContainers value)? fetchContainers,
  }) {
    return fetchVehicles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDepots value)? fetchDepots,
    TResult Function(_FetchVehicles value)? fetchVehicles,
    TResult Function(_FetchContainers value)? fetchContainers,
    required TResult orElse(),
  }) {
    if (fetchVehicles != null) {
      return fetchVehicles(this);
    }
    return orElse();
  }
}

abstract class _FetchVehicles implements AssetsEvent {
  const factory _FetchVehicles() = _$FetchVehiclesImpl;
}

/// @nodoc
abstract class _$$FetchContainersImplCopyWith<$Res> {
  factory _$$FetchContainersImplCopyWith(_$FetchContainersImpl value,
          $Res Function(_$FetchContainersImpl) then) =
      __$$FetchContainersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchContainersImplCopyWithImpl<$Res>
    extends _$AssetsEventCopyWithImpl<$Res, _$FetchContainersImpl>
    implements _$$FetchContainersImplCopyWith<$Res> {
  __$$FetchContainersImplCopyWithImpl(
      _$FetchContainersImpl _value, $Res Function(_$FetchContainersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchContainersImpl implements _FetchContainers {
  const _$FetchContainersImpl();

  @override
  String toString() {
    return 'AssetsEvent.fetchContainers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchContainersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchDepots,
    required TResult Function() fetchVehicles,
    required TResult Function() fetchContainers,
  }) {
    return fetchContainers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDepots,
    TResult? Function()? fetchVehicles,
    TResult? Function()? fetchContainers,
  }) {
    return fetchContainers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDepots,
    TResult Function()? fetchVehicles,
    TResult Function()? fetchContainers,
    required TResult orElse(),
  }) {
    if (fetchContainers != null) {
      return fetchContainers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchDepots value) fetchDepots,
    required TResult Function(_FetchVehicles value) fetchVehicles,
    required TResult Function(_FetchContainers value) fetchContainers,
  }) {
    return fetchContainers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDepots value)? fetchDepots,
    TResult? Function(_FetchVehicles value)? fetchVehicles,
    TResult? Function(_FetchContainers value)? fetchContainers,
  }) {
    return fetchContainers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDepots value)? fetchDepots,
    TResult Function(_FetchVehicles value)? fetchVehicles,
    TResult Function(_FetchContainers value)? fetchContainers,
    required TResult orElse(),
  }) {
    if (fetchContainers != null) {
      return fetchContainers(this);
    }
    return orElse();
  }
}

abstract class _FetchContainers implements AssetsEvent {
  const factory _FetchContainers() = _$FetchContainersImpl;
}

/// @nodoc
mixin _$AssetsState {
  Option<Either<Failure, List<Depot>>> get depotsOrFailureOption =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, List<Vehicle>>> get vehiclesOrFailureOption =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, List<Container>>> get containersOrFailureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssetsStateCopyWith<AssetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsStateCopyWith<$Res> {
  factory $AssetsStateCopyWith(
          AssetsState value, $Res Function(AssetsState) then) =
      _$AssetsStateCopyWithImpl<$Res, AssetsState>;
  @useResult
  $Res call(
      {Option<Either<Failure, List<Depot>>> depotsOrFailureOption,
      Option<Either<Failure, List<Vehicle>>> vehiclesOrFailureOption,
      Option<Either<Failure, List<Container>>> containersOrFailureOption});
}

/// @nodoc
class _$AssetsStateCopyWithImpl<$Res, $Val extends AssetsState>
    implements $AssetsStateCopyWith<$Res> {
  _$AssetsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depotsOrFailureOption = null,
    Object? vehiclesOrFailureOption = null,
    Object? containersOrFailureOption = null,
  }) {
    return _then(_value.copyWith(
      depotsOrFailureOption: null == depotsOrFailureOption
          ? _value.depotsOrFailureOption
          : depotsOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Depot>>>,
      vehiclesOrFailureOption: null == vehiclesOrFailureOption
          ? _value.vehiclesOrFailureOption
          : vehiclesOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Vehicle>>>,
      containersOrFailureOption: null == containersOrFailureOption
          ? _value.containersOrFailureOption
          : containersOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Container>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssetsStateImplCopyWith<$Res>
    implements $AssetsStateCopyWith<$Res> {
  factory _$$AssetsStateImplCopyWith(
          _$AssetsStateImpl value, $Res Function(_$AssetsStateImpl) then) =
      __$$AssetsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<Failure, List<Depot>>> depotsOrFailureOption,
      Option<Either<Failure, List<Vehicle>>> vehiclesOrFailureOption,
      Option<Either<Failure, List<Container>>> containersOrFailureOption});
}

/// @nodoc
class __$$AssetsStateImplCopyWithImpl<$Res>
    extends _$AssetsStateCopyWithImpl<$Res, _$AssetsStateImpl>
    implements _$$AssetsStateImplCopyWith<$Res> {
  __$$AssetsStateImplCopyWithImpl(
      _$AssetsStateImpl _value, $Res Function(_$AssetsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depotsOrFailureOption = null,
    Object? vehiclesOrFailureOption = null,
    Object? containersOrFailureOption = null,
  }) {
    return _then(_$AssetsStateImpl(
      depotsOrFailureOption: null == depotsOrFailureOption
          ? _value.depotsOrFailureOption
          : depotsOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Depot>>>,
      vehiclesOrFailureOption: null == vehiclesOrFailureOption
          ? _value.vehiclesOrFailureOption
          : vehiclesOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Vehicle>>>,
      containersOrFailureOption: null == containersOrFailureOption
          ? _value.containersOrFailureOption
          : containersOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Container>>>,
    ));
  }
}

/// @nodoc

class _$AssetsStateImpl implements _AssetsState {
  const _$AssetsStateImpl(
      {required this.depotsOrFailureOption,
      required this.vehiclesOrFailureOption,
      required this.containersOrFailureOption});

  @override
  final Option<Either<Failure, List<Depot>>> depotsOrFailureOption;
  @override
  final Option<Either<Failure, List<Vehicle>>> vehiclesOrFailureOption;
  @override
  final Option<Either<Failure, List<Container>>> containersOrFailureOption;

  @override
  String toString() {
    return 'AssetsState(depotsOrFailureOption: $depotsOrFailureOption, vehiclesOrFailureOption: $vehiclesOrFailureOption, containersOrFailureOption: $containersOrFailureOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetsStateImpl &&
            (identical(other.depotsOrFailureOption, depotsOrFailureOption) ||
                other.depotsOrFailureOption == depotsOrFailureOption) &&
            (identical(
                    other.vehiclesOrFailureOption, vehiclesOrFailureOption) ||
                other.vehiclesOrFailureOption == vehiclesOrFailureOption) &&
            (identical(other.containersOrFailureOption,
                    containersOrFailureOption) ||
                other.containersOrFailureOption == containersOrFailureOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, depotsOrFailureOption,
      vehiclesOrFailureOption, containersOrFailureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetsStateImplCopyWith<_$AssetsStateImpl> get copyWith =>
      __$$AssetsStateImplCopyWithImpl<_$AssetsStateImpl>(this, _$identity);
}

abstract class _AssetsState implements AssetsState {
  const factory _AssetsState(
      {required final Option<Either<Failure, List<Depot>>>
          depotsOrFailureOption,
      required final Option<Either<Failure, List<Vehicle>>>
          vehiclesOrFailureOption,
      required final Option<Either<Failure, List<Container>>>
          containersOrFailureOption}) = _$AssetsStateImpl;

  @override
  Option<Either<Failure, List<Depot>>> get depotsOrFailureOption;
  @override
  Option<Either<Failure, List<Vehicle>>> get vehiclesOrFailureOption;
  @override
  Option<Either<Failure, List<Container>>> get containersOrFailureOption;
  @override
  @JsonKey(ignore: true)
  _$$AssetsStateImplCopyWith<_$AssetsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

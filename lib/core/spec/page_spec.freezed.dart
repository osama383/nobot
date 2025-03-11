// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_spec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageSpec _$PageSpecFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'customers':
      return CustomersPageSpec.fromJson(json);
    case 'trips':
      return TripsPageSpec.fromJson(json);
    case 'reports':
      return ReportsPageSpec.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PageSpec',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PageSpec {
  TableSpec get tableSpec => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String depotId, TableSpec tableSpec) customers,
    required TResult Function(String depotId, TableSpec tableSpec) trips,
    required TResult Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)
        reports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String depotId, TableSpec tableSpec)? customers,
    TResult? Function(String depotId, TableSpec tableSpec)? trips,
    TResult? Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)?
        reports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String depotId, TableSpec tableSpec)? customers,
    TResult Function(String depotId, TableSpec tableSpec)? trips,
    TResult Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)?
        reports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersPageSpec value) customers,
    required TResult Function(TripsPageSpec value) trips,
    required TResult Function(ReportsPageSpec value) reports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomersPageSpec value)? customers,
    TResult? Function(TripsPageSpec value)? trips,
    TResult? Function(ReportsPageSpec value)? reports,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersPageSpec value)? customers,
    TResult Function(TripsPageSpec value)? trips,
    TResult Function(ReportsPageSpec value)? reports,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageSpecCopyWith<PageSpec> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageSpecCopyWith<$Res> {
  factory $PageSpecCopyWith(PageSpec value, $Res Function(PageSpec) then) =
      _$PageSpecCopyWithImpl<$Res, PageSpec>;
  @useResult
  $Res call({TableSpec tableSpec});

  $TableSpecCopyWith<$Res> get tableSpec;
}

/// @nodoc
class _$PageSpecCopyWithImpl<$Res, $Val extends PageSpec>
    implements $PageSpecCopyWith<$Res> {
  _$PageSpecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableSpec = null,
  }) {
    return _then(_value.copyWith(
      tableSpec: null == tableSpec
          ? _value.tableSpec
          : tableSpec // ignore: cast_nullable_to_non_nullable
              as TableSpec,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TableSpecCopyWith<$Res> get tableSpec {
    return $TableSpecCopyWith<$Res>(_value.tableSpec, (value) {
      return _then(_value.copyWith(tableSpec: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomersPageSpecImplCopyWith<$Res>
    implements $PageSpecCopyWith<$Res> {
  factory _$$CustomersPageSpecImplCopyWith(_$CustomersPageSpecImpl value,
          $Res Function(_$CustomersPageSpecImpl) then) =
      __$$CustomersPageSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String depotId, TableSpec tableSpec});

  @override
  $TableSpecCopyWith<$Res> get tableSpec;
}

/// @nodoc
class __$$CustomersPageSpecImplCopyWithImpl<$Res>
    extends _$PageSpecCopyWithImpl<$Res, _$CustomersPageSpecImpl>
    implements _$$CustomersPageSpecImplCopyWith<$Res> {
  __$$CustomersPageSpecImplCopyWithImpl(_$CustomersPageSpecImpl _value,
      $Res Function(_$CustomersPageSpecImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depotId = null,
    Object? tableSpec = null,
  }) {
    return _then(_$CustomersPageSpecImpl(
      depotId: null == depotId
          ? _value.depotId
          : depotId // ignore: cast_nullable_to_non_nullable
              as String,
      tableSpec: null == tableSpec
          ? _value.tableSpec
          : tableSpec // ignore: cast_nullable_to_non_nullable
              as TableSpec,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomersPageSpecImpl implements CustomersPageSpec {
  const _$CustomersPageSpecImpl(
      {required this.depotId, required this.tableSpec, final String? $type})
      : $type = $type ?? 'customers';

  factory _$CustomersPageSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomersPageSpecImplFromJson(json);

  @override
  final String depotId;
  @override
  final TableSpec tableSpec;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PageSpec.customers(depotId: $depotId, tableSpec: $tableSpec)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersPageSpecImpl &&
            (identical(other.depotId, depotId) || other.depotId == depotId) &&
            (identical(other.tableSpec, tableSpec) ||
                other.tableSpec == tableSpec));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, depotId, tableSpec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersPageSpecImplCopyWith<_$CustomersPageSpecImpl> get copyWith =>
      __$$CustomersPageSpecImplCopyWithImpl<_$CustomersPageSpecImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String depotId, TableSpec tableSpec) customers,
    required TResult Function(String depotId, TableSpec tableSpec) trips,
    required TResult Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)
        reports,
  }) {
    return customers(depotId, tableSpec);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String depotId, TableSpec tableSpec)? customers,
    TResult? Function(String depotId, TableSpec tableSpec)? trips,
    TResult? Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)?
        reports,
  }) {
    return customers?.call(depotId, tableSpec);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String depotId, TableSpec tableSpec)? customers,
    TResult Function(String depotId, TableSpec tableSpec)? trips,
    TResult Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)?
        reports,
    required TResult orElse(),
  }) {
    if (customers != null) {
      return customers(depotId, tableSpec);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersPageSpec value) customers,
    required TResult Function(TripsPageSpec value) trips,
    required TResult Function(ReportsPageSpec value) reports,
  }) {
    return customers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomersPageSpec value)? customers,
    TResult? Function(TripsPageSpec value)? trips,
    TResult? Function(ReportsPageSpec value)? reports,
  }) {
    return customers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersPageSpec value)? customers,
    TResult Function(TripsPageSpec value)? trips,
    TResult Function(ReportsPageSpec value)? reports,
    required TResult orElse(),
  }) {
    if (customers != null) {
      return customers(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomersPageSpecImplToJson(
      this,
    );
  }
}

abstract class CustomersPageSpec implements PageSpec {
  const factory CustomersPageSpec(
      {required final String depotId,
      required final TableSpec tableSpec}) = _$CustomersPageSpecImpl;

  factory CustomersPageSpec.fromJson(Map<String, dynamic> json) =
      _$CustomersPageSpecImpl.fromJson;

  String get depotId;
  @override
  TableSpec get tableSpec;
  @override
  @JsonKey(ignore: true)
  _$$CustomersPageSpecImplCopyWith<_$CustomersPageSpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripsPageSpecImplCopyWith<$Res>
    implements $PageSpecCopyWith<$Res> {
  factory _$$TripsPageSpecImplCopyWith(
          _$TripsPageSpecImpl value, $Res Function(_$TripsPageSpecImpl) then) =
      __$$TripsPageSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String depotId, TableSpec tableSpec});

  @override
  $TableSpecCopyWith<$Res> get tableSpec;
}

/// @nodoc
class __$$TripsPageSpecImplCopyWithImpl<$Res>
    extends _$PageSpecCopyWithImpl<$Res, _$TripsPageSpecImpl>
    implements _$$TripsPageSpecImplCopyWith<$Res> {
  __$$TripsPageSpecImplCopyWithImpl(
      _$TripsPageSpecImpl _value, $Res Function(_$TripsPageSpecImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depotId = null,
    Object? tableSpec = null,
  }) {
    return _then(_$TripsPageSpecImpl(
      depotId: null == depotId
          ? _value.depotId
          : depotId // ignore: cast_nullable_to_non_nullable
              as String,
      tableSpec: null == tableSpec
          ? _value.tableSpec
          : tableSpec // ignore: cast_nullable_to_non_nullable
              as TableSpec,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripsPageSpecImpl implements TripsPageSpec {
  const _$TripsPageSpecImpl(
      {required this.depotId, required this.tableSpec, final String? $type})
      : $type = $type ?? 'trips';

  factory _$TripsPageSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripsPageSpecImplFromJson(json);

  @override
  final String depotId;
  @override
  final TableSpec tableSpec;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PageSpec.trips(depotId: $depotId, tableSpec: $tableSpec)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripsPageSpecImpl &&
            (identical(other.depotId, depotId) || other.depotId == depotId) &&
            (identical(other.tableSpec, tableSpec) ||
                other.tableSpec == tableSpec));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, depotId, tableSpec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripsPageSpecImplCopyWith<_$TripsPageSpecImpl> get copyWith =>
      __$$TripsPageSpecImplCopyWithImpl<_$TripsPageSpecImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String depotId, TableSpec tableSpec) customers,
    required TResult Function(String depotId, TableSpec tableSpec) trips,
    required TResult Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)
        reports,
  }) {
    return trips(depotId, tableSpec);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String depotId, TableSpec tableSpec)? customers,
    TResult? Function(String depotId, TableSpec tableSpec)? trips,
    TResult? Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)?
        reports,
  }) {
    return trips?.call(depotId, tableSpec);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String depotId, TableSpec tableSpec)? customers,
    TResult Function(String depotId, TableSpec tableSpec)? trips,
    TResult Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)?
        reports,
    required TResult orElse(),
  }) {
    if (trips != null) {
      return trips(depotId, tableSpec);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersPageSpec value) customers,
    required TResult Function(TripsPageSpec value) trips,
    required TResult Function(ReportsPageSpec value) reports,
  }) {
    return trips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomersPageSpec value)? customers,
    TResult? Function(TripsPageSpec value)? trips,
    TResult? Function(ReportsPageSpec value)? reports,
  }) {
    return trips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersPageSpec value)? customers,
    TResult Function(TripsPageSpec value)? trips,
    TResult Function(ReportsPageSpec value)? reports,
    required TResult orElse(),
  }) {
    if (trips != null) {
      return trips(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TripsPageSpecImplToJson(
      this,
    );
  }
}

abstract class TripsPageSpec implements PageSpec {
  const factory TripsPageSpec(
      {required final String depotId,
      required final TableSpec tableSpec}) = _$TripsPageSpecImpl;

  factory TripsPageSpec.fromJson(Map<String, dynamic> json) =
      _$TripsPageSpecImpl.fromJson;

  String get depotId;
  @override
  TableSpec get tableSpec;
  @override
  @JsonKey(ignore: true)
  _$$TripsPageSpecImplCopyWith<_$TripsPageSpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportsPageSpecImplCopyWith<$Res>
    implements $PageSpecCopyWith<$Res> {
  factory _$$ReportsPageSpecImplCopyWith(_$ReportsPageSpecImpl value,
          $Res Function(_$ReportsPageSpecImpl) then) =
      __$$ReportsPageSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ReportsDateSelectionJsonConverter()
      Either<SmartDates, DateTimeRange> dateSelection,
      TableSpec tableSpec});

  @override
  $TableSpecCopyWith<$Res> get tableSpec;
}

/// @nodoc
class __$$ReportsPageSpecImplCopyWithImpl<$Res>
    extends _$PageSpecCopyWithImpl<$Res, _$ReportsPageSpecImpl>
    implements _$$ReportsPageSpecImplCopyWith<$Res> {
  __$$ReportsPageSpecImplCopyWithImpl(
      _$ReportsPageSpecImpl _value, $Res Function(_$ReportsPageSpecImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateSelection = null,
    Object? tableSpec = null,
  }) {
    return _then(_$ReportsPageSpecImpl(
      dateSelection: null == dateSelection
          ? _value.dateSelection
          : dateSelection // ignore: cast_nullable_to_non_nullable
              as Either<SmartDates, DateTimeRange>,
      tableSpec: null == tableSpec
          ? _value.tableSpec
          : tableSpec // ignore: cast_nullable_to_non_nullable
              as TableSpec,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportsPageSpecImpl implements ReportsPageSpec {
  const _$ReportsPageSpecImpl(
      {@ReportsDateSelectionJsonConverter() required this.dateSelection,
      required this.tableSpec,
      final String? $type})
      : $type = $type ?? 'reports';

  factory _$ReportsPageSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportsPageSpecImplFromJson(json);

  @override
  @ReportsDateSelectionJsonConverter()
  final Either<SmartDates, DateTimeRange> dateSelection;
  @override
  final TableSpec tableSpec;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PageSpec.reports(dateSelection: $dateSelection, tableSpec: $tableSpec)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportsPageSpecImpl &&
            (identical(other.dateSelection, dateSelection) ||
                other.dateSelection == dateSelection) &&
            (identical(other.tableSpec, tableSpec) ||
                other.tableSpec == tableSpec));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateSelection, tableSpec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportsPageSpecImplCopyWith<_$ReportsPageSpecImpl> get copyWith =>
      __$$ReportsPageSpecImplCopyWithImpl<_$ReportsPageSpecImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String depotId, TableSpec tableSpec) customers,
    required TResult Function(String depotId, TableSpec tableSpec) trips,
    required TResult Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)
        reports,
  }) {
    return reports(dateSelection, tableSpec);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String depotId, TableSpec tableSpec)? customers,
    TResult? Function(String depotId, TableSpec tableSpec)? trips,
    TResult? Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)?
        reports,
  }) {
    return reports?.call(dateSelection, tableSpec);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String depotId, TableSpec tableSpec)? customers,
    TResult Function(String depotId, TableSpec tableSpec)? trips,
    TResult Function(
            @ReportsDateSelectionJsonConverter()
            Either<SmartDates, DateTimeRange> dateSelection,
            TableSpec tableSpec)?
        reports,
    required TResult orElse(),
  }) {
    if (reports != null) {
      return reports(dateSelection, tableSpec);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersPageSpec value) customers,
    required TResult Function(TripsPageSpec value) trips,
    required TResult Function(ReportsPageSpec value) reports,
  }) {
    return reports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomersPageSpec value)? customers,
    TResult? Function(TripsPageSpec value)? trips,
    TResult? Function(ReportsPageSpec value)? reports,
  }) {
    return reports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersPageSpec value)? customers,
    TResult Function(TripsPageSpec value)? trips,
    TResult Function(ReportsPageSpec value)? reports,
    required TResult orElse(),
  }) {
    if (reports != null) {
      return reports(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportsPageSpecImplToJson(
      this,
    );
  }
}

abstract class ReportsPageSpec implements PageSpec {
  const factory ReportsPageSpec(
      {@ReportsDateSelectionJsonConverter()
      required final Either<SmartDates, DateTimeRange> dateSelection,
      required final TableSpec tableSpec}) = _$ReportsPageSpecImpl;

  factory ReportsPageSpec.fromJson(Map<String, dynamic> json) =
      _$ReportsPageSpecImpl.fromJson;

  @ReportsDateSelectionJsonConverter()
  Either<SmartDates, DateTimeRange> get dateSelection;
  @override
  TableSpec get tableSpec;
  @override
  @JsonKey(ignore: true)
  _$$ReportsPageSpecImplCopyWith<_$ReportsPageSpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

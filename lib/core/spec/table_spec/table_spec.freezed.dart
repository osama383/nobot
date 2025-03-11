// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_spec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableSpec _$TableSpecFromJson(Map<String, dynamic> json) {
  return _TableSpec.fromJson(json);
}

/// @nodoc
mixin _$TableSpec {
  String get tableId => throw _privateConstructorUsedError;
  Set<String> get hiddenGroupIds => throw _privateConstructorUsedError;
  Set<String> get hiddenColumnIds => throw _privateConstructorUsedError;
  @SortOptionConverter()
  Option<SortSpec> get sortOption => throw _privateConstructorUsedError;
  List<FilterSpec> get filters => throw _privateConstructorUsedError;

  /// Serializes this TableSpec to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TableSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableSpecCopyWith<TableSpec> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableSpecCopyWith<$Res> {
  factory $TableSpecCopyWith(TableSpec value, $Res Function(TableSpec) then) =
      _$TableSpecCopyWithImpl<$Res, TableSpec>;
  @useResult
  $Res call(
      {String tableId,
      Set<String> hiddenGroupIds,
      Set<String> hiddenColumnIds,
      @SortOptionConverter() Option<SortSpec> sortOption,
      List<FilterSpec> filters});
}

/// @nodoc
class _$TableSpecCopyWithImpl<$Res, $Val extends TableSpec>
    implements $TableSpecCopyWith<$Res> {
  _$TableSpecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
    Object? hiddenGroupIds = null,
    Object? hiddenColumnIds = null,
    Object? sortOption = null,
    Object? filters = null,
  }) {
    return _then(_value.copyWith(
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
      hiddenGroupIds: null == hiddenGroupIds
          ? _value.hiddenGroupIds
          : hiddenGroupIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      hiddenColumnIds: null == hiddenColumnIds
          ? _value.hiddenColumnIds
          : hiddenColumnIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      sortOption: null == sortOption
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as Option<SortSpec>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterSpec>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableSpecImplCopyWith<$Res>
    implements $TableSpecCopyWith<$Res> {
  factory _$$TableSpecImplCopyWith(
          _$TableSpecImpl value, $Res Function(_$TableSpecImpl) then) =
      __$$TableSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tableId,
      Set<String> hiddenGroupIds,
      Set<String> hiddenColumnIds,
      @SortOptionConverter() Option<SortSpec> sortOption,
      List<FilterSpec> filters});
}

/// @nodoc
class __$$TableSpecImplCopyWithImpl<$Res>
    extends _$TableSpecCopyWithImpl<$Res, _$TableSpecImpl>
    implements _$$TableSpecImplCopyWith<$Res> {
  __$$TableSpecImplCopyWithImpl(
      _$TableSpecImpl _value, $Res Function(_$TableSpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of TableSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
    Object? hiddenGroupIds = null,
    Object? hiddenColumnIds = null,
    Object? sortOption = null,
    Object? filters = null,
  }) {
    return _then(_$TableSpecImpl(
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
      hiddenGroupIds: null == hiddenGroupIds
          ? _value._hiddenGroupIds
          : hiddenGroupIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      hiddenColumnIds: null == hiddenColumnIds
          ? _value._hiddenColumnIds
          : hiddenColumnIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      sortOption: null == sortOption
          ? _value.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as Option<SortSpec>,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<FilterSpec>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableSpecImpl implements _TableSpec {
  const _$TableSpecImpl(
      {required this.tableId,
      required final Set<String> hiddenGroupIds,
      required final Set<String> hiddenColumnIds,
      @SortOptionConverter() required this.sortOption,
      required final List<FilterSpec> filters})
      : _hiddenGroupIds = hiddenGroupIds,
        _hiddenColumnIds = hiddenColumnIds,
        _filters = filters;

  factory _$TableSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableSpecImplFromJson(json);

  @override
  final String tableId;
  final Set<String> _hiddenGroupIds;
  @override
  Set<String> get hiddenGroupIds {
    if (_hiddenGroupIds is EqualUnmodifiableSetView) return _hiddenGroupIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_hiddenGroupIds);
  }

  final Set<String> _hiddenColumnIds;
  @override
  Set<String> get hiddenColumnIds {
    if (_hiddenColumnIds is EqualUnmodifiableSetView) return _hiddenColumnIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_hiddenColumnIds);
  }

  @override
  @SortOptionConverter()
  final Option<SortSpec> sortOption;
  final List<FilterSpec> _filters;
  @override
  List<FilterSpec> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  String toString() {
    return 'TableSpec(tableId: $tableId, hiddenGroupIds: $hiddenGroupIds, hiddenColumnIds: $hiddenColumnIds, sortOption: $sortOption, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableSpecImpl &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            const DeepCollectionEquality()
                .equals(other._hiddenGroupIds, _hiddenGroupIds) &&
            const DeepCollectionEquality()
                .equals(other._hiddenColumnIds, _hiddenColumnIds) &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tableId,
      const DeepCollectionEquality().hash(_hiddenGroupIds),
      const DeepCollectionEquality().hash(_hiddenColumnIds),
      sortOption,
      const DeepCollectionEquality().hash(_filters));

  /// Create a copy of TableSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableSpecImplCopyWith<_$TableSpecImpl> get copyWith =>
      __$$TableSpecImplCopyWithImpl<_$TableSpecImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableSpecImplToJson(
      this,
    );
  }
}

abstract class _TableSpec implements TableSpec {
  const factory _TableSpec(
      {required final String tableId,
      required final Set<String> hiddenGroupIds,
      required final Set<String> hiddenColumnIds,
      @SortOptionConverter() required final Option<SortSpec> sortOption,
      required final List<FilterSpec> filters}) = _$TableSpecImpl;

  factory _TableSpec.fromJson(Map<String, dynamic> json) =
      _$TableSpecImpl.fromJson;

  @override
  String get tableId;
  @override
  Set<String> get hiddenGroupIds;
  @override
  Set<String> get hiddenColumnIds;
  @override
  @SortOptionConverter()
  Option<SortSpec> get sortOption;
  @override
  List<FilterSpec> get filters;

  /// Create a copy of TableSpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableSpecImplCopyWith<_$TableSpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SortSpec _$SortSpecFromJson(Map<String, dynamic> json) {
  return _SortSpec.fromJson(json);
}

/// @nodoc
mixin _$SortSpec {
  String get columnId => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;

  /// Serializes this SortSpec to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SortSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortSpecCopyWith<SortSpec> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortSpecCopyWith<$Res> {
  factory $SortSpecCopyWith(SortSpec value, $Res Function(SortSpec) then) =
      _$SortSpecCopyWithImpl<$Res, SortSpec>;
  @useResult
  $Res call({String columnId, bool ascending});
}

/// @nodoc
class _$SortSpecCopyWithImpl<$Res, $Val extends SortSpec>
    implements $SortSpecCopyWith<$Res> {
  _$SortSpecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SortSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? ascending = null,
  }) {
    return _then(_value.copyWith(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortSpecImplCopyWith<$Res>
    implements $SortSpecCopyWith<$Res> {
  factory _$$SortSpecImplCopyWith(
          _$SortSpecImpl value, $Res Function(_$SortSpecImpl) then) =
      __$$SortSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String columnId, bool ascending});
}

/// @nodoc
class __$$SortSpecImplCopyWithImpl<$Res>
    extends _$SortSpecCopyWithImpl<$Res, _$SortSpecImpl>
    implements _$$SortSpecImplCopyWith<$Res> {
  __$$SortSpecImplCopyWithImpl(
      _$SortSpecImpl _value, $Res Function(_$SortSpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of SortSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? ascending = null,
  }) {
    return _then(_$SortSpecImpl(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortSpecImpl implements _SortSpec {
  const _$SortSpecImpl({required this.columnId, required this.ascending});

  factory _$SortSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortSpecImplFromJson(json);

  @override
  final String columnId;
  @override
  final bool ascending;

  @override
  String toString() {
    return 'SortSpec(columnId: $columnId, ascending: $ascending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortSpecImpl &&
            (identical(other.columnId, columnId) ||
                other.columnId == columnId) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, columnId, ascending);

  /// Create a copy of SortSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortSpecImplCopyWith<_$SortSpecImpl> get copyWith =>
      __$$SortSpecImplCopyWithImpl<_$SortSpecImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortSpecImplToJson(
      this,
    );
  }
}

abstract class _SortSpec implements SortSpec {
  const factory _SortSpec(
      {required final String columnId,
      required final bool ascending}) = _$SortSpecImpl;

  factory _SortSpec.fromJson(Map<String, dynamic> json) =
      _$SortSpecImpl.fromJson;

  @override
  String get columnId;
  @override
  bool get ascending;

  /// Create a copy of SortSpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortSpecImplCopyWith<_$SortSpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterSpec _$FilterSpecFromJson(Map<String, dynamic> json) {
  return _FilterSpec.fromJson(json);
}

/// @nodoc
mixin _$FilterSpec {
  String get columnId => throw _privateConstructorUsedError;
  List<FilterCriterionSpec> get criteriaSpecs =>
      throw _privateConstructorUsedError;

  /// Serializes this FilterSpec to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterSpecCopyWith<FilterSpec> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSpecCopyWith<$Res> {
  factory $FilterSpecCopyWith(
          FilterSpec value, $Res Function(FilterSpec) then) =
      _$FilterSpecCopyWithImpl<$Res, FilterSpec>;
  @useResult
  $Res call({String columnId, List<FilterCriterionSpec> criteriaSpecs});
}

/// @nodoc
class _$FilterSpecCopyWithImpl<$Res, $Val extends FilterSpec>
    implements $FilterSpecCopyWith<$Res> {
  _$FilterSpecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? criteriaSpecs = null,
  }) {
    return _then(_value.copyWith(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      criteriaSpecs: null == criteriaSpecs
          ? _value.criteriaSpecs
          : criteriaSpecs // ignore: cast_nullable_to_non_nullable
              as List<FilterCriterionSpec>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterSpecImplCopyWith<$Res>
    implements $FilterSpecCopyWith<$Res> {
  factory _$$FilterSpecImplCopyWith(
          _$FilterSpecImpl value, $Res Function(_$FilterSpecImpl) then) =
      __$$FilterSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String columnId, List<FilterCriterionSpec> criteriaSpecs});
}

/// @nodoc
class __$$FilterSpecImplCopyWithImpl<$Res>
    extends _$FilterSpecCopyWithImpl<$Res, _$FilterSpecImpl>
    implements _$$FilterSpecImplCopyWith<$Res> {
  __$$FilterSpecImplCopyWithImpl(
      _$FilterSpecImpl _value, $Res Function(_$FilterSpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? criteriaSpecs = null,
  }) {
    return _then(_$FilterSpecImpl(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      criteriaSpecs: null == criteriaSpecs
          ? _value._criteriaSpecs
          : criteriaSpecs // ignore: cast_nullable_to_non_nullable
              as List<FilterCriterionSpec>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterSpecImpl implements _FilterSpec {
  const _$FilterSpecImpl(
      {required this.columnId,
      required final List<FilterCriterionSpec> criteriaSpecs})
      : _criteriaSpecs = criteriaSpecs;

  factory _$FilterSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterSpecImplFromJson(json);

  @override
  final String columnId;
  final List<FilterCriterionSpec> _criteriaSpecs;
  @override
  List<FilterCriterionSpec> get criteriaSpecs {
    if (_criteriaSpecs is EqualUnmodifiableListView) return _criteriaSpecs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_criteriaSpecs);
  }

  @override
  String toString() {
    return 'FilterSpec(columnId: $columnId, criteriaSpecs: $criteriaSpecs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSpecImpl &&
            (identical(other.columnId, columnId) ||
                other.columnId == columnId) &&
            const DeepCollectionEquality()
                .equals(other._criteriaSpecs, _criteriaSpecs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, columnId,
      const DeepCollectionEquality().hash(_criteriaSpecs));

  /// Create a copy of FilterSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSpecImplCopyWith<_$FilterSpecImpl> get copyWith =>
      __$$FilterSpecImplCopyWithImpl<_$FilterSpecImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterSpecImplToJson(
      this,
    );
  }
}

abstract class _FilterSpec implements FilterSpec {
  const factory _FilterSpec(
          {required final String columnId,
          required final List<FilterCriterionSpec> criteriaSpecs}) =
      _$FilterSpecImpl;

  factory _FilterSpec.fromJson(Map<String, dynamic> json) =
      _$FilterSpecImpl.fromJson;

  @override
  String get columnId;
  @override
  List<FilterCriterionSpec> get criteriaSpecs;

  /// Create a copy of FilterSpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterSpecImplCopyWith<_$FilterSpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterCriterionSpec _$FilterCriterionSpecFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'string':
      return StringFilterCriterionSpec.fromJson(json);
    case 'number':
      return NumberFilterCriterionSpec.fromJson(json);
    case 'date':
      return DateFilterCriterionSpec.fromJson(json);
    case 'collection':
      return CollectionFilterCriterionSpec.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FilterCriterionSpec',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FilterCriterionSpec {
  String get name => throw _privateConstructorUsedError;
  Object get target => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String target) string,
    required TResult Function(String name, double target) number,
    required TResult Function(String name, DateTime target) date,
    required TResult Function(String name, Set<String> target) collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String target)? string,
    TResult? Function(String name, double target)? number,
    TResult? Function(String name, DateTime target)? date,
    TResult? Function(String name, Set<String> target)? collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String target)? string,
    TResult Function(String name, double target)? number,
    TResult Function(String name, DateTime target)? date,
    TResult Function(String name, Set<String> target)? collection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringFilterCriterionSpec value) string,
    required TResult Function(NumberFilterCriterionSpec value) number,
    required TResult Function(DateFilterCriterionSpec value) date,
    required TResult Function(CollectionFilterCriterionSpec value) collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringFilterCriterionSpec value)? string,
    TResult? Function(NumberFilterCriterionSpec value)? number,
    TResult? Function(DateFilterCriterionSpec value)? date,
    TResult? Function(CollectionFilterCriterionSpec value)? collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringFilterCriterionSpec value)? string,
    TResult Function(NumberFilterCriterionSpec value)? number,
    TResult Function(DateFilterCriterionSpec value)? date,
    TResult Function(CollectionFilterCriterionSpec value)? collection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FilterCriterionSpec to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterCriterionSpecCopyWith<FilterCriterionSpec> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCriterionSpecCopyWith<$Res> {
  factory $FilterCriterionSpecCopyWith(
          FilterCriterionSpec value, $Res Function(FilterCriterionSpec) then) =
      _$FilterCriterionSpecCopyWithImpl<$Res, FilterCriterionSpec>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$FilterCriterionSpecCopyWithImpl<$Res, $Val extends FilterCriterionSpec>
    implements $FilterCriterionSpecCopyWith<$Res> {
  _$FilterCriterionSpecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringFilterCriterionSpecImplCopyWith<$Res>
    implements $FilterCriterionSpecCopyWith<$Res> {
  factory _$$StringFilterCriterionSpecImplCopyWith(
          _$StringFilterCriterionSpecImpl value,
          $Res Function(_$StringFilterCriterionSpecImpl) then) =
      __$$StringFilterCriterionSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String target});
}

/// @nodoc
class __$$StringFilterCriterionSpecImplCopyWithImpl<$Res>
    extends _$FilterCriterionSpecCopyWithImpl<$Res,
        _$StringFilterCriterionSpecImpl>
    implements _$$StringFilterCriterionSpecImplCopyWith<$Res> {
  __$$StringFilterCriterionSpecImplCopyWithImpl(
      _$StringFilterCriterionSpecImpl _value,
      $Res Function(_$StringFilterCriterionSpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? target = null,
  }) {
    return _then(_$StringFilterCriterionSpecImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringFilterCriterionSpecImpl implements StringFilterCriterionSpec {
  const _$StringFilterCriterionSpecImpl(
      {required this.name, required this.target, final String? $type})
      : $type = $type ?? 'string';

  factory _$StringFilterCriterionSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringFilterCriterionSpecImplFromJson(json);

  @override
  final String name;
  @override
  final String target;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FilterCriterionSpec.string(name: $name, target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringFilterCriterionSpecImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.target, target) || other.target == target));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, target);

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringFilterCriterionSpecImplCopyWith<_$StringFilterCriterionSpecImpl>
      get copyWith => __$$StringFilterCriterionSpecImplCopyWithImpl<
          _$StringFilterCriterionSpecImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String target) string,
    required TResult Function(String name, double target) number,
    required TResult Function(String name, DateTime target) date,
    required TResult Function(String name, Set<String> target) collection,
  }) {
    return string(name, target);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String target)? string,
    TResult? Function(String name, double target)? number,
    TResult? Function(String name, DateTime target)? date,
    TResult? Function(String name, Set<String> target)? collection,
  }) {
    return string?.call(name, target);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String target)? string,
    TResult Function(String name, double target)? number,
    TResult Function(String name, DateTime target)? date,
    TResult Function(String name, Set<String> target)? collection,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(name, target);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringFilterCriterionSpec value) string,
    required TResult Function(NumberFilterCriterionSpec value) number,
    required TResult Function(DateFilterCriterionSpec value) date,
    required TResult Function(CollectionFilterCriterionSpec value) collection,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringFilterCriterionSpec value)? string,
    TResult? Function(NumberFilterCriterionSpec value)? number,
    TResult? Function(DateFilterCriterionSpec value)? date,
    TResult? Function(CollectionFilterCriterionSpec value)? collection,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringFilterCriterionSpec value)? string,
    TResult Function(NumberFilterCriterionSpec value)? number,
    TResult Function(DateFilterCriterionSpec value)? date,
    TResult Function(CollectionFilterCriterionSpec value)? collection,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StringFilterCriterionSpecImplToJson(
      this,
    );
  }
}

abstract class StringFilterCriterionSpec implements FilterCriterionSpec {
  const factory StringFilterCriterionSpec(
      {required final String name,
      required final String target}) = _$StringFilterCriterionSpecImpl;

  factory StringFilterCriterionSpec.fromJson(Map<String, dynamic> json) =
      _$StringFilterCriterionSpecImpl.fromJson;

  @override
  String get name;
  @override
  String get target;

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringFilterCriterionSpecImplCopyWith<_$StringFilterCriterionSpecImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberFilterCriterionSpecImplCopyWith<$Res>
    implements $FilterCriterionSpecCopyWith<$Res> {
  factory _$$NumberFilterCriterionSpecImplCopyWith(
          _$NumberFilterCriterionSpecImpl value,
          $Res Function(_$NumberFilterCriterionSpecImpl) then) =
      __$$NumberFilterCriterionSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double target});
}

/// @nodoc
class __$$NumberFilterCriterionSpecImplCopyWithImpl<$Res>
    extends _$FilterCriterionSpecCopyWithImpl<$Res,
        _$NumberFilterCriterionSpecImpl>
    implements _$$NumberFilterCriterionSpecImplCopyWith<$Res> {
  __$$NumberFilterCriterionSpecImplCopyWithImpl(
      _$NumberFilterCriterionSpecImpl _value,
      $Res Function(_$NumberFilterCriterionSpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? target = null,
  }) {
    return _then(_$NumberFilterCriterionSpecImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberFilterCriterionSpecImpl implements NumberFilterCriterionSpec {
  const _$NumberFilterCriterionSpecImpl(
      {required this.name, required this.target, final String? $type})
      : $type = $type ?? 'number';

  factory _$NumberFilterCriterionSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberFilterCriterionSpecImplFromJson(json);

  @override
  final String name;
  @override
  final double target;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FilterCriterionSpec.number(name: $name, target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberFilterCriterionSpecImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.target, target) || other.target == target));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, target);

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberFilterCriterionSpecImplCopyWith<_$NumberFilterCriterionSpecImpl>
      get copyWith => __$$NumberFilterCriterionSpecImplCopyWithImpl<
          _$NumberFilterCriterionSpecImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String target) string,
    required TResult Function(String name, double target) number,
    required TResult Function(String name, DateTime target) date,
    required TResult Function(String name, Set<String> target) collection,
  }) {
    return number(name, target);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String target)? string,
    TResult? Function(String name, double target)? number,
    TResult? Function(String name, DateTime target)? date,
    TResult? Function(String name, Set<String> target)? collection,
  }) {
    return number?.call(name, target);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String target)? string,
    TResult Function(String name, double target)? number,
    TResult Function(String name, DateTime target)? date,
    TResult Function(String name, Set<String> target)? collection,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(name, target);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringFilterCriterionSpec value) string,
    required TResult Function(NumberFilterCriterionSpec value) number,
    required TResult Function(DateFilterCriterionSpec value) date,
    required TResult Function(CollectionFilterCriterionSpec value) collection,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringFilterCriterionSpec value)? string,
    TResult? Function(NumberFilterCriterionSpec value)? number,
    TResult? Function(DateFilterCriterionSpec value)? date,
    TResult? Function(CollectionFilterCriterionSpec value)? collection,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringFilterCriterionSpec value)? string,
    TResult Function(NumberFilterCriterionSpec value)? number,
    TResult Function(DateFilterCriterionSpec value)? date,
    TResult Function(CollectionFilterCriterionSpec value)? collection,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberFilterCriterionSpecImplToJson(
      this,
    );
  }
}

abstract class NumberFilterCriterionSpec implements FilterCriterionSpec {
  const factory NumberFilterCriterionSpec(
      {required final String name,
      required final double target}) = _$NumberFilterCriterionSpecImpl;

  factory NumberFilterCriterionSpec.fromJson(Map<String, dynamic> json) =
      _$NumberFilterCriterionSpecImpl.fromJson;

  @override
  String get name;
  @override
  double get target;

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NumberFilterCriterionSpecImplCopyWith<_$NumberFilterCriterionSpecImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateFilterCriterionSpecImplCopyWith<$Res>
    implements $FilterCriterionSpecCopyWith<$Res> {
  factory _$$DateFilterCriterionSpecImplCopyWith(
          _$DateFilterCriterionSpecImpl value,
          $Res Function(_$DateFilterCriterionSpecImpl) then) =
      __$$DateFilterCriterionSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime target});
}

/// @nodoc
class __$$DateFilterCriterionSpecImplCopyWithImpl<$Res>
    extends _$FilterCriterionSpecCopyWithImpl<$Res,
        _$DateFilterCriterionSpecImpl>
    implements _$$DateFilterCriterionSpecImplCopyWith<$Res> {
  __$$DateFilterCriterionSpecImplCopyWithImpl(
      _$DateFilterCriterionSpecImpl _value,
      $Res Function(_$DateFilterCriterionSpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? target = null,
  }) {
    return _then(_$DateFilterCriterionSpecImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateFilterCriterionSpecImpl implements DateFilterCriterionSpec {
  const _$DateFilterCriterionSpecImpl(
      {required this.name, required this.target, final String? $type})
      : $type = $type ?? 'date';

  factory _$DateFilterCriterionSpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateFilterCriterionSpecImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime target;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FilterCriterionSpec.date(name: $name, target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateFilterCriterionSpecImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.target, target) || other.target == target));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, target);

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateFilterCriterionSpecImplCopyWith<_$DateFilterCriterionSpecImpl>
      get copyWith => __$$DateFilterCriterionSpecImplCopyWithImpl<
          _$DateFilterCriterionSpecImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String target) string,
    required TResult Function(String name, double target) number,
    required TResult Function(String name, DateTime target) date,
    required TResult Function(String name, Set<String> target) collection,
  }) {
    return date(name, target);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String target)? string,
    TResult? Function(String name, double target)? number,
    TResult? Function(String name, DateTime target)? date,
    TResult? Function(String name, Set<String> target)? collection,
  }) {
    return date?.call(name, target);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String target)? string,
    TResult Function(String name, double target)? number,
    TResult Function(String name, DateTime target)? date,
    TResult Function(String name, Set<String> target)? collection,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(name, target);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringFilterCriterionSpec value) string,
    required TResult Function(NumberFilterCriterionSpec value) number,
    required TResult Function(DateFilterCriterionSpec value) date,
    required TResult Function(CollectionFilterCriterionSpec value) collection,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringFilterCriterionSpec value)? string,
    TResult? Function(NumberFilterCriterionSpec value)? number,
    TResult? Function(DateFilterCriterionSpec value)? date,
    TResult? Function(CollectionFilterCriterionSpec value)? collection,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringFilterCriterionSpec value)? string,
    TResult Function(NumberFilterCriterionSpec value)? number,
    TResult Function(DateFilterCriterionSpec value)? date,
    TResult Function(CollectionFilterCriterionSpec value)? collection,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DateFilterCriterionSpecImplToJson(
      this,
    );
  }
}

abstract class DateFilterCriterionSpec implements FilterCriterionSpec {
  const factory DateFilterCriterionSpec(
      {required final String name,
      required final DateTime target}) = _$DateFilterCriterionSpecImpl;

  factory DateFilterCriterionSpec.fromJson(Map<String, dynamic> json) =
      _$DateFilterCriterionSpecImpl.fromJson;

  @override
  String get name;
  @override
  DateTime get target;

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateFilterCriterionSpecImplCopyWith<_$DateFilterCriterionSpecImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollectionFilterCriterionSpecImplCopyWith<$Res>
    implements $FilterCriterionSpecCopyWith<$Res> {
  factory _$$CollectionFilterCriterionSpecImplCopyWith(
          _$CollectionFilterCriterionSpecImpl value,
          $Res Function(_$CollectionFilterCriterionSpecImpl) then) =
      __$$CollectionFilterCriterionSpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Set<String> target});
}

/// @nodoc
class __$$CollectionFilterCriterionSpecImplCopyWithImpl<$Res>
    extends _$FilterCriterionSpecCopyWithImpl<$Res,
        _$CollectionFilterCriterionSpecImpl>
    implements _$$CollectionFilterCriterionSpecImplCopyWith<$Res> {
  __$$CollectionFilterCriterionSpecImplCopyWithImpl(
      _$CollectionFilterCriterionSpecImpl _value,
      $Res Function(_$CollectionFilterCriterionSpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? target = null,
  }) {
    return _then(_$CollectionFilterCriterionSpecImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value._target
          : target // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionFilterCriterionSpecImpl
    implements CollectionFilterCriterionSpec {
  const _$CollectionFilterCriterionSpecImpl(
      {required this.name,
      required final Set<String> target,
      final String? $type})
      : _target = target,
        $type = $type ?? 'collection';

  factory _$CollectionFilterCriterionSpecImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CollectionFilterCriterionSpecImplFromJson(json);

  @override
  final String name;
  final Set<String> _target;
  @override
  Set<String> get target {
    if (_target is EqualUnmodifiableSetView) return _target;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_target);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FilterCriterionSpec.collection(name: $name, target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionFilterCriterionSpecImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._target, _target));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_target));

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionFilterCriterionSpecImplCopyWith<
          _$CollectionFilterCriterionSpecImpl>
      get copyWith => __$$CollectionFilterCriterionSpecImplCopyWithImpl<
          _$CollectionFilterCriterionSpecImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String target) string,
    required TResult Function(String name, double target) number,
    required TResult Function(String name, DateTime target) date,
    required TResult Function(String name, Set<String> target) collection,
  }) {
    return collection(name, target);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String target)? string,
    TResult? Function(String name, double target)? number,
    TResult? Function(String name, DateTime target)? date,
    TResult? Function(String name, Set<String> target)? collection,
  }) {
    return collection?.call(name, target);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String target)? string,
    TResult Function(String name, double target)? number,
    TResult Function(String name, DateTime target)? date,
    TResult Function(String name, Set<String> target)? collection,
    required TResult orElse(),
  }) {
    if (collection != null) {
      return collection(name, target);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringFilterCriterionSpec value) string,
    required TResult Function(NumberFilterCriterionSpec value) number,
    required TResult Function(DateFilterCriterionSpec value) date,
    required TResult Function(CollectionFilterCriterionSpec value) collection,
  }) {
    return collection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringFilterCriterionSpec value)? string,
    TResult? Function(NumberFilterCriterionSpec value)? number,
    TResult? Function(DateFilterCriterionSpec value)? date,
    TResult? Function(CollectionFilterCriterionSpec value)? collection,
  }) {
    return collection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringFilterCriterionSpec value)? string,
    TResult Function(NumberFilterCriterionSpec value)? number,
    TResult Function(DateFilterCriterionSpec value)? date,
    TResult Function(CollectionFilterCriterionSpec value)? collection,
    required TResult orElse(),
  }) {
    if (collection != null) {
      return collection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionFilterCriterionSpecImplToJson(
      this,
    );
  }
}

abstract class CollectionFilterCriterionSpec implements FilterCriterionSpec {
  const factory CollectionFilterCriterionSpec(
      {required final String name,
      required final Set<String> target}) = _$CollectionFilterCriterionSpecImpl;

  factory CollectionFilterCriterionSpec.fromJson(Map<String, dynamic> json) =
      _$CollectionFilterCriterionSpecImpl.fromJson;

  @override
  String get name;
  @override
  Set<String> get target;

  /// Create a copy of FilterCriterionSpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionFilterCriterionSpecImplCopyWith<
          _$CollectionFilterCriterionSpecImpl>
      get copyWith => throw _privateConstructorUsedError;
}

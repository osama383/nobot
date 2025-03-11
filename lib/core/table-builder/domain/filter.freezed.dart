// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableColumn<T extends Object, V extends Object> {
  Columnar<T, Object> get column => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showFilter, Columnar<T, V> column) primitive,
    required TResult Function(
            Columnar<T, String> column, dynamic multiselectFilter)
        collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showFilter, Columnar<T, V> column)? primitive,
    TResult? Function(Columnar<T, String> column, dynamic multiselectFilter)?
        collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showFilter, Columnar<T, V> column)? primitive,
    TResult Function(Columnar<T, String> column, dynamic multiselectFilter)?
        collection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrimitiveColumn<T, V> value) primitive,
    required TResult Function(CollectionColumn<T, V> value) collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrimitiveColumn<T, V> value)? primitive,
    TResult? Function(CollectionColumn<T, V> value)? collection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrimitiveColumn<T, V> value)? primitive,
    TResult Function(CollectionColumn<T, V> value)? collection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableColumnCopyWith<T extends Object, V extends Object, $Res> {
  factory $TableColumnCopyWith(
          TableColumn<T, V> value, $Res Function(TableColumn<T, V>) then) =
      _$TableColumnCopyWithImpl<T, V, $Res, TableColumn<T, V>>;
}

/// @nodoc
class _$TableColumnCopyWithImpl<T extends Object, V extends Object, $Res,
        $Val extends TableColumn<T, V>>
    implements $TableColumnCopyWith<T, V, $Res> {
  _$TableColumnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PrimitiveColumnImplCopyWith<T extends Object,
    V extends Object, $Res> {
  factory _$$PrimitiveColumnImplCopyWith(_$PrimitiveColumnImpl<T, V> value,
          $Res Function(_$PrimitiveColumnImpl<T, V>) then) =
      __$$PrimitiveColumnImplCopyWithImpl<T, V, $Res>;
  @useResult
  $Res call({bool showFilter, Columnar<T, V> column});

  $ColumnarCopyWith<T, V, $Res> get column;
}

/// @nodoc
class __$$PrimitiveColumnImplCopyWithImpl<T extends Object, V extends Object,
        $Res>
    extends _$TableColumnCopyWithImpl<T, V, $Res, _$PrimitiveColumnImpl<T, V>>
    implements _$$PrimitiveColumnImplCopyWith<T, V, $Res> {
  __$$PrimitiveColumnImplCopyWithImpl(_$PrimitiveColumnImpl<T, V> _value,
      $Res Function(_$PrimitiveColumnImpl<T, V>) _then)
      : super(_value, _then);

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showFilter = null,
    Object? column = null,
  }) {
    return _then(_$PrimitiveColumnImpl<T, V>(
      showFilter: null == showFilter
          ? _value.showFilter
          : showFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as Columnar<T, V>,
    ));
  }

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColumnarCopyWith<T, V, $Res> get column {
    return $ColumnarCopyWith<T, V, $Res>(_value.column, (value) {
      return _then(_value.copyWith(column: value));
    });
  }
}

/// @nodoc

class _$PrimitiveColumnImpl<T extends Object, V extends Object>
    extends PrimitiveColumn<T, V> {
  const _$PrimitiveColumnImpl({required this.showFilter, required this.column})
      : super._();

  @override
  final bool showFilter;
  @override
  final Columnar<T, V> column;

  @override
  String toString() {
    return 'TableColumn<$T, $V>.primitive(showFilter: $showFilter, column: $column)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimitiveColumnImpl<T, V> &&
            (identical(other.showFilter, showFilter) ||
                other.showFilter == showFilter) &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showFilter, column);

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimitiveColumnImplCopyWith<T, V, _$PrimitiveColumnImpl<T, V>>
      get copyWith => __$$PrimitiveColumnImplCopyWithImpl<T, V,
          _$PrimitiveColumnImpl<T, V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showFilter, Columnar<T, V> column) primitive,
    required TResult Function(
            Columnar<T, String> column, dynamic multiselectFilter)
        collection,
  }) {
    return primitive(showFilter, column);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showFilter, Columnar<T, V> column)? primitive,
    TResult? Function(Columnar<T, String> column, dynamic multiselectFilter)?
        collection,
  }) {
    return primitive?.call(showFilter, column);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showFilter, Columnar<T, V> column)? primitive,
    TResult Function(Columnar<T, String> column, dynamic multiselectFilter)?
        collection,
    required TResult orElse(),
  }) {
    if (primitive != null) {
      return primitive(showFilter, column);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrimitiveColumn<T, V> value) primitive,
    required TResult Function(CollectionColumn<T, V> value) collection,
  }) {
    return primitive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrimitiveColumn<T, V> value)? primitive,
    TResult? Function(CollectionColumn<T, V> value)? collection,
  }) {
    return primitive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrimitiveColumn<T, V> value)? primitive,
    TResult Function(CollectionColumn<T, V> value)? collection,
    required TResult orElse(),
  }) {
    if (primitive != null) {
      return primitive(this);
    }
    return orElse();
  }
}

abstract class PrimitiveColumn<T extends Object, V extends Object>
    extends TableColumn<T, V> {
  const factory PrimitiveColumn(
      {required final bool showFilter,
      required final Columnar<T, V> column}) = _$PrimitiveColumnImpl<T, V>;
  const PrimitiveColumn._() : super._();

  bool get showFilter;
  @override
  Columnar<T, V> get column;

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimitiveColumnImplCopyWith<T, V, _$PrimitiveColumnImpl<T, V>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollectionColumnImplCopyWith<T extends Object,
    V extends Object, $Res> {
  factory _$$CollectionColumnImplCopyWith(_$CollectionColumnImpl<T, V> value,
          $Res Function(_$CollectionColumnImpl<T, V>) then) =
      __$$CollectionColumnImplCopyWithImpl<T, V, $Res>;
  @useResult
  $Res call({Columnar<T, String> column, dynamic multiselectFilter});

  $ColumnarCopyWith<T, String, $Res> get column;
}

/// @nodoc
class __$$CollectionColumnImplCopyWithImpl<T extends Object, V extends Object,
        $Res>
    extends _$TableColumnCopyWithImpl<T, V, $Res, _$CollectionColumnImpl<T, V>>
    implements _$$CollectionColumnImplCopyWith<T, V, $Res> {
  __$$CollectionColumnImplCopyWithImpl(_$CollectionColumnImpl<T, V> _value,
      $Res Function(_$CollectionColumnImpl<T, V>) _then)
      : super(_value, _then);

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? multiselectFilter = freezed,
  }) {
    return _then(_$CollectionColumnImpl<T, V>(
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as Columnar<T, String>,
      multiselectFilter: freezed == multiselectFilter
          ? _value.multiselectFilter!
          : multiselectFilter,
    ));
  }

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColumnarCopyWith<T, String, $Res> get column {
    return $ColumnarCopyWith<T, String, $Res>(_value.column, (value) {
      return _then(_value.copyWith(column: value));
    });
  }
}

/// @nodoc

class _$CollectionColumnImpl<T extends Object, V extends Object>
    extends CollectionColumn<T, V> {
  const _$CollectionColumnImpl(
      {required this.column, required this.multiselectFilter})
      : super._();

  @override
  final Columnar<T, String> column;
  @override
  final dynamic multiselectFilter;

  @override
  String toString() {
    return 'TableColumn<$T, $V>.collection(column: $column, multiselectFilter: $multiselectFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionColumnImpl<T, V> &&
            (identical(other.column, column) || other.column == column) &&
            const DeepCollectionEquality()
                .equals(other.multiselectFilter, multiselectFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column,
      const DeepCollectionEquality().hash(multiselectFilter));

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionColumnImplCopyWith<T, V, _$CollectionColumnImpl<T, V>>
      get copyWith => __$$CollectionColumnImplCopyWithImpl<T, V,
          _$CollectionColumnImpl<T, V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showFilter, Columnar<T, V> column) primitive,
    required TResult Function(
            Columnar<T, String> column, dynamic multiselectFilter)
        collection,
  }) {
    return collection(column, multiselectFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showFilter, Columnar<T, V> column)? primitive,
    TResult? Function(Columnar<T, String> column, dynamic multiselectFilter)?
        collection,
  }) {
    return collection?.call(column, multiselectFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showFilter, Columnar<T, V> column)? primitive,
    TResult Function(Columnar<T, String> column, dynamic multiselectFilter)?
        collection,
    required TResult orElse(),
  }) {
    if (collection != null) {
      return collection(column, multiselectFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrimitiveColumn<T, V> value) primitive,
    required TResult Function(CollectionColumn<T, V> value) collection,
  }) {
    return collection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrimitiveColumn<T, V> value)? primitive,
    TResult? Function(CollectionColumn<T, V> value)? collection,
  }) {
    return collection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrimitiveColumn<T, V> value)? primitive,
    TResult Function(CollectionColumn<T, V> value)? collection,
    required TResult orElse(),
  }) {
    if (collection != null) {
      return collection(this);
    }
    return orElse();
  }
}

abstract class CollectionColumn<T extends Object, V extends Object>
    extends TableColumn<T, V> {
  const factory CollectionColumn(
      {required final Columnar<T, String> column,
      required final dynamic multiselectFilter}) = _$CollectionColumnImpl<T, V>;
  const CollectionColumn._() : super._();

  @override
  Columnar<T, String> get column;
  dynamic get multiselectFilter;

  /// Create a copy of TableColumn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionColumnImplCopyWith<T, V, _$CollectionColumnImpl<T, V>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ColumnDecoration {
  double get minWidth => throw _privateConstructorUsedError;
  double? get maxWidth => throw _privateConstructorUsedError;
  int get flex => throw _privateConstructorUsedError;
  EdgeInsets get padding => throw _privateConstructorUsedError;

  /// Create a copy of ColumnDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColumnDecorationCopyWith<ColumnDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColumnDecorationCopyWith<$Res> {
  factory $ColumnDecorationCopyWith(
          ColumnDecoration value, $Res Function(ColumnDecoration) then) =
      _$ColumnDecorationCopyWithImpl<$Res, ColumnDecoration>;
  @useResult
  $Res call({double minWidth, double? maxWidth, int flex, EdgeInsets padding});
}

/// @nodoc
class _$ColumnDecorationCopyWithImpl<$Res, $Val extends ColumnDecoration>
    implements $ColumnDecorationCopyWith<$Res> {
  _$ColumnDecorationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColumnDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth = null,
    Object? maxWidth = freezed,
    Object? flex = null,
    Object? padding = null,
  }) {
    return _then(_value.copyWith(
      minWidth: null == minWidth
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      flex: null == flex
          ? _value.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColumnDecorationImplCopyWith<$Res>
    implements $ColumnDecorationCopyWith<$Res> {
  factory _$$ColumnDecorationImplCopyWith(_$ColumnDecorationImpl value,
          $Res Function(_$ColumnDecorationImpl) then) =
      __$$ColumnDecorationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double minWidth, double? maxWidth, int flex, EdgeInsets padding});
}

/// @nodoc
class __$$ColumnDecorationImplCopyWithImpl<$Res>
    extends _$ColumnDecorationCopyWithImpl<$Res, _$ColumnDecorationImpl>
    implements _$$ColumnDecorationImplCopyWith<$Res> {
  __$$ColumnDecorationImplCopyWithImpl(_$ColumnDecorationImpl _value,
      $Res Function(_$ColumnDecorationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColumnDecoration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minWidth = null,
    Object? maxWidth = freezed,
    Object? flex = null,
    Object? padding = null,
  }) {
    return _then(_$ColumnDecorationImpl(
      minWidth: null == minWidth
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      flex: null == flex
          ? _value.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
    ));
  }
}

/// @nodoc

class _$ColumnDecorationImpl implements _ColumnDecoration {
  const _$ColumnDecorationImpl(
      {this.minWidth = 0,
      this.maxWidth,
      this.flex = 1,
      this.padding = const EdgeInsets.symmetric(horizontal: 8)});

  @override
  @JsonKey()
  final double minWidth;
  @override
  final double? maxWidth;
  @override
  @JsonKey()
  final int flex;
  @override
  @JsonKey()
  final EdgeInsets padding;

  @override
  String toString() {
    return 'ColumnDecoration(minWidth: $minWidth, maxWidth: $maxWidth, flex: $flex, padding: $padding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColumnDecorationImpl &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.flex, flex) || other.flex == flex) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, minWidth, maxWidth, flex, padding);

  /// Create a copy of ColumnDecoration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColumnDecorationImplCopyWith<_$ColumnDecorationImpl> get copyWith =>
      __$$ColumnDecorationImplCopyWithImpl<_$ColumnDecorationImpl>(
          this, _$identity);
}

abstract class _ColumnDecoration implements ColumnDecoration {
  const factory _ColumnDecoration(
      {final double minWidth,
      final double? maxWidth,
      final int flex,
      final EdgeInsets padding}) = _$ColumnDecorationImpl;

  @override
  double get minWidth;
  @override
  double? get maxWidth;
  @override
  int get flex;
  @override
  EdgeInsets get padding;

  /// Create a copy of ColumnDecoration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColumnDecorationImplCopyWith<_$ColumnDecorationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Columnar<T extends Object, V extends Object> {
  String get id => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get showNameInHeader => throw _privateConstructorUsedError;
  ColumnDecoration get decoration => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  TextStyle? Function(T)? get textStyle => throw _privateConstructorUsedError;
  TableData<V> Function(T) get data => throw _privateConstructorUsedError;
  String Function(List<T>)? get total => throw _privateConstructorUsedError;

  /// Create a copy of Columnar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColumnarCopyWith<T, V, Columnar<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColumnarCopyWith<T extends Object, V extends Object, $Res> {
  factory $ColumnarCopyWith(
          Columnar<T, V> value, $Res Function(Columnar<T, V>) then) =
      _$ColumnarCopyWithImpl<T, V, $Res, Columnar<T, V>>;
  @useResult
  $Res call(
      {String id,
      String groupId,
      String name,
      bool showNameInHeader,
      ColumnDecoration decoration,
      bool isVisible,
      TextStyle? Function(T)? textStyle,
      TableData<V> Function(T) data,
      String Function(List<T>)? total});

  $ColumnDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class _$ColumnarCopyWithImpl<T extends Object, V extends Object, $Res,
    $Val extends Columnar<T, V>> implements $ColumnarCopyWith<T, V, $Res> {
  _$ColumnarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Columnar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? name = null,
    Object? showNameInHeader = null,
    Object? decoration = null,
    Object? isVisible = null,
    Object? textStyle = freezed,
    Object? data = null,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showNameInHeader: null == showNameInHeader
          ? _value.showNameInHeader
          : showNameInHeader // ignore: cast_nullable_to_non_nullable
              as bool,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ColumnDecoration,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      textStyle: freezed == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle? Function(T)?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TableData<V> Function(T),
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String Function(List<T>)?,
    ) as $Val);
  }

  /// Create a copy of Columnar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColumnDecorationCopyWith<$Res> get decoration {
    return $ColumnDecorationCopyWith<$Res>(_value.decoration, (value) {
      return _then(_value.copyWith(decoration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ColumnarImplCopyWith<T extends Object, V extends Object, $Res>
    implements $ColumnarCopyWith<T, V, $Res> {
  factory _$$ColumnarImplCopyWith(_$ColumnarImpl<T, V> value,
          $Res Function(_$ColumnarImpl<T, V>) then) =
      __$$ColumnarImplCopyWithImpl<T, V, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String groupId,
      String name,
      bool showNameInHeader,
      ColumnDecoration decoration,
      bool isVisible,
      TextStyle? Function(T)? textStyle,
      TableData<V> Function(T) data,
      String Function(List<T>)? total});

  @override
  $ColumnDecorationCopyWith<$Res> get decoration;
}

/// @nodoc
class __$$ColumnarImplCopyWithImpl<T extends Object, V extends Object, $Res>
    extends _$ColumnarCopyWithImpl<T, V, $Res, _$ColumnarImpl<T, V>>
    implements _$$ColumnarImplCopyWith<T, V, $Res> {
  __$$ColumnarImplCopyWithImpl(
      _$ColumnarImpl<T, V> _value, $Res Function(_$ColumnarImpl<T, V>) _then)
      : super(_value, _then);

  /// Create a copy of Columnar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? name = null,
    Object? showNameInHeader = null,
    Object? decoration = null,
    Object? isVisible = null,
    Object? textStyle = freezed,
    Object? data = null,
    Object? total = freezed,
  }) {
    return _then(_$ColumnarImpl<T, V>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showNameInHeader: null == showNameInHeader
          ? _value.showNameInHeader
          : showNameInHeader // ignore: cast_nullable_to_non_nullable
              as bool,
      decoration: null == decoration
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ColumnDecoration,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      textStyle: freezed == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle? Function(T)?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TableData<V> Function(T),
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String Function(List<T>)?,
    ));
  }
}

/// @nodoc

class _$ColumnarImpl<T extends Object, V extends Object>
    extends _Columnar<T, V> {
  const _$ColumnarImpl(
      {required this.id,
      this.groupId = '',
      required this.name,
      this.showNameInHeader = true,
      this.decoration = const ColumnDecoration(),
      this.isVisible = true,
      this.textStyle = null,
      required this.data,
      this.total = null})
      : super._();

  @override
  final String id;
  @override
  @JsonKey()
  final String groupId;
  @override
  final String name;
  @override
  @JsonKey()
  final bool showNameInHeader;
  @override
  @JsonKey()
  final ColumnDecoration decoration;
  @override
  @JsonKey()
  final bool isVisible;
  @override
  @JsonKey()
  final TextStyle? Function(T)? textStyle;
  @override
  final TableData<V> Function(T) data;
  @override
  @JsonKey()
  final String Function(List<T>)? total;

  @override
  String toString() {
    return 'Columnar<$T, $V>(id: $id, groupId: $groupId, name: $name, showNameInHeader: $showNameInHeader, decoration: $decoration, isVisible: $isVisible, textStyle: $textStyle, data: $data, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColumnarImpl<T, V> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.showNameInHeader, showNameInHeader) ||
                other.showNameInHeader == showNameInHeader) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, groupId, name,
      showNameInHeader, decoration, isVisible, textStyle, data, total);

  /// Create a copy of Columnar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColumnarImplCopyWith<T, V, _$ColumnarImpl<T, V>> get copyWith =>
      __$$ColumnarImplCopyWithImpl<T, V, _$ColumnarImpl<T, V>>(
          this, _$identity);
}

abstract class _Columnar<T extends Object, V extends Object>
    extends Columnar<T, V> {
  const factory _Columnar(
      {required final String id,
      final String groupId,
      required final String name,
      final bool showNameInHeader,
      final ColumnDecoration decoration,
      final bool isVisible,
      final TextStyle? Function(T)? textStyle,
      required final TableData<V> Function(T) data,
      final String Function(List<T>)? total}) = _$ColumnarImpl<T, V>;
  const _Columnar._() : super._();

  @override
  String get id;
  @override
  String get groupId;
  @override
  String get name;
  @override
  bool get showNameInHeader;
  @override
  ColumnDecoration get decoration;
  @override
  bool get isVisible;
  @override
  TextStyle? Function(T)? get textStyle;
  @override
  TableData<V> Function(T) get data;
  @override
  String Function(List<T>)? get total;

  /// Create a copy of Columnar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColumnarImplCopyWith<T, V, _$ColumnarImpl<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ColumnGroup {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;

  /// Create a copy of ColumnGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColumnGroupCopyWith<ColumnGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColumnGroupCopyWith<$Res> {
  factory $ColumnGroupCopyWith(
          ColumnGroup value, $Res Function(ColumnGroup) then) =
      _$ColumnGroupCopyWithImpl<$Res, ColumnGroup>;
  @useResult
  $Res call({String id, String title, bool isVisible});
}

/// @nodoc
class _$ColumnGroupCopyWithImpl<$Res, $Val extends ColumnGroup>
    implements $ColumnGroupCopyWith<$Res> {
  _$ColumnGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColumnGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isVisible = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColumnGroupImplCopyWith<$Res>
    implements $ColumnGroupCopyWith<$Res> {
  factory _$$ColumnGroupImplCopyWith(
          _$ColumnGroupImpl value, $Res Function(_$ColumnGroupImpl) then) =
      __$$ColumnGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, bool isVisible});
}

/// @nodoc
class __$$ColumnGroupImplCopyWithImpl<$Res>
    extends _$ColumnGroupCopyWithImpl<$Res, _$ColumnGroupImpl>
    implements _$$ColumnGroupImplCopyWith<$Res> {
  __$$ColumnGroupImplCopyWithImpl(
      _$ColumnGroupImpl _value, $Res Function(_$ColumnGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColumnGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isVisible = null,
  }) {
    return _then(_$ColumnGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ColumnGroupImpl implements _ColumnGroup {
  const _$ColumnGroupImpl(
      {required this.id, required this.title, required this.isVisible});

  @override
  final String id;
  @override
  final String title;
  @override
  final bool isVisible;

  @override
  String toString() {
    return 'ColumnGroup(id: $id, title: $title, isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColumnGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, isVisible);

  /// Create a copy of ColumnGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColumnGroupImplCopyWith<_$ColumnGroupImpl> get copyWith =>
      __$$ColumnGroupImplCopyWithImpl<_$ColumnGroupImpl>(this, _$identity);
}

abstract class _ColumnGroup implements ColumnGroup {
  const factory _ColumnGroup(
      {required final String id,
      required final String title,
      required final bool isVisible}) = _$ColumnGroupImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get isVisible;

  /// Create a copy of ColumnGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColumnGroupImplCopyWith<_$ColumnGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Filter<T extends Object, V extends Object> {
  String get columnId => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  Object Function(T) get value => throw _privateConstructorUsedError;
  List<AppliedCriterion<Object>> get appliedCriteria =>
      throw _privateConstructorUsedError;
  Widget? get filterIcon => throw _privateConstructorUsedError;
  Widget? get filteredIcon => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)
        primitive,
    required TResult Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)
        multiselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        primitive,
    TResult? Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        multiselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        primitive,
    TResult Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        multiselect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrimitiveFilter<T, V> value) primitive,
    required TResult Function(MultiselectFilter<T, V> value) multiselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrimitiveFilter<T, V> value)? primitive,
    TResult? Function(MultiselectFilter<T, V> value)? multiselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrimitiveFilter<T, V> value)? primitive,
    TResult Function(MultiselectFilter<T, V> value)? multiselect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterCopyWith<T, V, Filter<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<T extends Object, V extends Object, $Res> {
  factory $FilterCopyWith(
          Filter<T, V> value, $Res Function(Filter<T, V>) then) =
      _$FilterCopyWithImpl<T, V, $Res, Filter<T, V>>;
  @useResult
  $Res call(
      {String columnId,
      String groupId,
      Widget? filterIcon,
      Widget? filteredIcon});
}

/// @nodoc
class _$FilterCopyWithImpl<T extends Object, V extends Object, $Res,
    $Val extends Filter<T, V>> implements $FilterCopyWith<T, V, $Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? groupId = null,
    Object? filterIcon = freezed,
    Object? filteredIcon = freezed,
  }) {
    return _then(_value.copyWith(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      filterIcon: freezed == filterIcon
          ? _value.filterIcon
          : filterIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      filteredIcon: freezed == filteredIcon
          ? _value.filteredIcon
          : filteredIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimitiveFilterImplCopyWith<T extends Object,
    V extends Object, $Res> implements $FilterCopyWith<T, V, $Res> {
  factory _$$PrimitiveFilterImplCopyWith(_$PrimitiveFilterImpl<T, V> value,
          $Res Function(_$PrimitiveFilterImpl<T, V>) then) =
      __$$PrimitiveFilterImplCopyWithImpl<T, V, $Res>;
  @override
  @useResult
  $Res call(
      {String columnId,
      String groupId,
      V Function(T) value,
      List<AppliedCriterion<V>> appliedCriteria,
      Widget? filterIcon,
      Widget? filteredIcon});
}

/// @nodoc
class __$$PrimitiveFilterImplCopyWithImpl<T extends Object, V extends Object,
        $Res>
    extends _$FilterCopyWithImpl<T, V, $Res, _$PrimitiveFilterImpl<T, V>>
    implements _$$PrimitiveFilterImplCopyWith<T, V, $Res> {
  __$$PrimitiveFilterImplCopyWithImpl(_$PrimitiveFilterImpl<T, V> _value,
      $Res Function(_$PrimitiveFilterImpl<T, V>) _then)
      : super(_value, _then);

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? groupId = null,
    Object? value = null,
    Object? appliedCriteria = null,
    Object? filterIcon = freezed,
    Object? filteredIcon = freezed,
  }) {
    return _then(_$PrimitiveFilterImpl<T, V>(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as V Function(T),
      appliedCriteria: null == appliedCriteria
          ? _value._appliedCriteria
          : appliedCriteria // ignore: cast_nullable_to_non_nullable
              as List<AppliedCriterion<V>>,
      filterIcon: freezed == filterIcon
          ? _value.filterIcon
          : filterIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      filteredIcon: freezed == filteredIcon
          ? _value.filteredIcon
          : filteredIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$PrimitiveFilterImpl<T extends Object, V extends Object>
    extends PrimitiveFilter<T, V> {
  const _$PrimitiveFilterImpl(
      {required this.columnId,
      this.groupId = '',
      required this.value,
      final List<AppliedCriterion<V>> appliedCriteria = const [],
      this.filterIcon = null,
      this.filteredIcon = null})
      : _appliedCriteria = appliedCriteria,
        super._();

  @override
  final String columnId;
  @override
  @JsonKey()
  final String groupId;
  @override
  final V Function(T) value;
  final List<AppliedCriterion<V>> _appliedCriteria;
  @override
  @JsonKey()
  List<AppliedCriterion<V>> get appliedCriteria {
    if (_appliedCriteria is EqualUnmodifiableListView) return _appliedCriteria;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedCriteria);
  }

  @override
  @JsonKey()
  final Widget? filterIcon;
  @override
  @JsonKey()
  final Widget? filteredIcon;

  @override
  String toString() {
    return 'Filter<$T, $V>.primitive(columnId: $columnId, groupId: $groupId, value: $value, appliedCriteria: $appliedCriteria, filterIcon: $filterIcon, filteredIcon: $filteredIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimitiveFilterImpl<T, V> &&
            (identical(other.columnId, columnId) ||
                other.columnId == columnId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other._appliedCriteria, _appliedCriteria) &&
            (identical(other.filterIcon, filterIcon) ||
                other.filterIcon == filterIcon) &&
            (identical(other.filteredIcon, filteredIcon) ||
                other.filteredIcon == filteredIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      columnId,
      groupId,
      value,
      const DeepCollectionEquality().hash(_appliedCriteria),
      filterIcon,
      filteredIcon);

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimitiveFilterImplCopyWith<T, V, _$PrimitiveFilterImpl<T, V>>
      get copyWith => __$$PrimitiveFilterImplCopyWithImpl<T, V,
          _$PrimitiveFilterImpl<T, V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)
        primitive,
    required TResult Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)
        multiselect,
  }) {
    return primitive(
        columnId, groupId, value, appliedCriteria, filterIcon, filteredIcon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        primitive,
    TResult? Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        multiselect,
  }) {
    return primitive?.call(
        columnId, groupId, value, appliedCriteria, filterIcon, filteredIcon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        primitive,
    TResult Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        multiselect,
    required TResult orElse(),
  }) {
    if (primitive != null) {
      return primitive(
          columnId, groupId, value, appliedCriteria, filterIcon, filteredIcon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrimitiveFilter<T, V> value) primitive,
    required TResult Function(MultiselectFilter<T, V> value) multiselect,
  }) {
    return primitive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrimitiveFilter<T, V> value)? primitive,
    TResult? Function(MultiselectFilter<T, V> value)? multiselect,
  }) {
    return primitive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrimitiveFilter<T, V> value)? primitive,
    TResult Function(MultiselectFilter<T, V> value)? multiselect,
    required TResult orElse(),
  }) {
    if (primitive != null) {
      return primitive(this);
    }
    return orElse();
  }
}

abstract class PrimitiveFilter<T extends Object, V extends Object>
    extends Filter<T, V> {
  const factory PrimitiveFilter(
      {required final String columnId,
      final String groupId,
      required final V Function(T) value,
      final List<AppliedCriterion<V>> appliedCriteria,
      final Widget? filterIcon,
      final Widget? filteredIcon}) = _$PrimitiveFilterImpl<T, V>;
  const PrimitiveFilter._() : super._();

  @override
  String get columnId;
  @override
  String get groupId;
  @override
  V Function(T) get value;
  @override
  List<AppliedCriterion<V>> get appliedCriteria;
  @override
  Widget? get filterIcon;
  @override
  Widget? get filteredIcon;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimitiveFilterImplCopyWith<T, V, _$PrimitiveFilterImpl<T, V>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiselectFilterImplCopyWith<T extends Object,
    V extends Object, $Res> implements $FilterCopyWith<T, V, $Res> {
  factory _$$MultiselectFilterImplCopyWith(_$MultiselectFilterImpl<T, V> value,
          $Res Function(_$MultiselectFilterImpl<T, V>) then) =
      __$$MultiselectFilterImplCopyWithImpl<T, V, $Res>;
  @override
  @useResult
  $Res call(
      {String columnId,
      String groupId,
      Set<V> Function(T) value,
      Set<V> options,
      String Function(V) optionName,
      bool includeEmptyOption,
      String emptyOptionName,
      Color? Function(V)? optionColor,
      List<AppliedCriterion<Set<V>>> appliedCriteria,
      Widget? filterIcon,
      Widget? filteredIcon});
}

/// @nodoc
class __$$MultiselectFilterImplCopyWithImpl<T extends Object, V extends Object,
        $Res>
    extends _$FilterCopyWithImpl<T, V, $Res, _$MultiselectFilterImpl<T, V>>
    implements _$$MultiselectFilterImplCopyWith<T, V, $Res> {
  __$$MultiselectFilterImplCopyWithImpl(_$MultiselectFilterImpl<T, V> _value,
      $Res Function(_$MultiselectFilterImpl<T, V>) _then)
      : super(_value, _then);

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? groupId = null,
    Object? value = null,
    Object? options = null,
    Object? optionName = null,
    Object? includeEmptyOption = null,
    Object? emptyOptionName = null,
    Object? optionColor = freezed,
    Object? appliedCriteria = null,
    Object? filterIcon = freezed,
    Object? filteredIcon = freezed,
  }) {
    return _then(_$MultiselectFilterImpl<T, V>(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Set<V> Function(T),
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as Set<V>,
      optionName: null == optionName
          ? _value.optionName
          : optionName // ignore: cast_nullable_to_non_nullable
              as String Function(V),
      includeEmptyOption: null == includeEmptyOption
          ? _value.includeEmptyOption
          : includeEmptyOption // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyOptionName: null == emptyOptionName
          ? _value.emptyOptionName
          : emptyOptionName // ignore: cast_nullable_to_non_nullable
              as String,
      optionColor: freezed == optionColor
          ? _value.optionColor
          : optionColor // ignore: cast_nullable_to_non_nullable
              as Color? Function(V)?,
      appliedCriteria: null == appliedCriteria
          ? _value._appliedCriteria
          : appliedCriteria // ignore: cast_nullable_to_non_nullable
              as List<AppliedCriterion<Set<V>>>,
      filterIcon: freezed == filterIcon
          ? _value.filterIcon
          : filterIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      filteredIcon: freezed == filteredIcon
          ? _value.filteredIcon
          : filteredIcon // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$MultiselectFilterImpl<T extends Object, V extends Object>
    extends MultiselectFilter<T, V> {
  const _$MultiselectFilterImpl(
      {required this.columnId,
      this.groupId = '',
      required this.value,
      required final Set<V> options,
      required this.optionName,
      required this.includeEmptyOption,
      required this.emptyOptionName,
      this.optionColor = null,
      final List<AppliedCriterion<Set<V>>> appliedCriteria = const [],
      this.filterIcon = null,
      this.filteredIcon = null})
      : _options = options,
        _appliedCriteria = appliedCriteria,
        super._();

  @override
  final String columnId;
  @override
  @JsonKey()
  final String groupId;
  @override
  final Set<V> Function(T) value;
  final Set<V> _options;
  @override
  Set<V> get options {
    if (_options is EqualUnmodifiableSetView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_options);
  }

  @override
  final String Function(V) optionName;
  @override
  final bool includeEmptyOption;
  @override
  final String emptyOptionName;
  @override
  @JsonKey()
  final Color? Function(V)? optionColor;
  final List<AppliedCriterion<Set<V>>> _appliedCriteria;
  @override
  @JsonKey()
  List<AppliedCriterion<Set<V>>> get appliedCriteria {
    if (_appliedCriteria is EqualUnmodifiableListView) return _appliedCriteria;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedCriteria);
  }

  @override
  @JsonKey()
  final Widget? filterIcon;
  @override
  @JsonKey()
  final Widget? filteredIcon;

  @override
  String toString() {
    return 'Filter<$T, $V>.multiselect(columnId: $columnId, groupId: $groupId, value: $value, options: $options, optionName: $optionName, includeEmptyOption: $includeEmptyOption, emptyOptionName: $emptyOptionName, optionColor: $optionColor, appliedCriteria: $appliedCriteria, filterIcon: $filterIcon, filteredIcon: $filteredIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiselectFilterImpl<T, V> &&
            (identical(other.columnId, columnId) ||
                other.columnId == columnId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.optionName, optionName) ||
                other.optionName == optionName) &&
            (identical(other.includeEmptyOption, includeEmptyOption) ||
                other.includeEmptyOption == includeEmptyOption) &&
            (identical(other.emptyOptionName, emptyOptionName) ||
                other.emptyOptionName == emptyOptionName) &&
            (identical(other.optionColor, optionColor) ||
                other.optionColor == optionColor) &&
            const DeepCollectionEquality()
                .equals(other._appliedCriteria, _appliedCriteria) &&
            (identical(other.filterIcon, filterIcon) ||
                other.filterIcon == filterIcon) &&
            (identical(other.filteredIcon, filteredIcon) ||
                other.filteredIcon == filteredIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      columnId,
      groupId,
      value,
      const DeepCollectionEquality().hash(_options),
      optionName,
      includeEmptyOption,
      emptyOptionName,
      optionColor,
      const DeepCollectionEquality().hash(_appliedCriteria),
      filterIcon,
      filteredIcon);

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiselectFilterImplCopyWith<T, V, _$MultiselectFilterImpl<T, V>>
      get copyWith => __$$MultiselectFilterImplCopyWithImpl<T, V,
          _$MultiselectFilterImpl<T, V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)
        primitive,
    required TResult Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)
        multiselect,
  }) {
    return multiselect(
        columnId,
        groupId,
        value,
        options,
        optionName,
        includeEmptyOption,
        emptyOptionName,
        optionColor,
        appliedCriteria,
        filterIcon,
        filteredIcon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        primitive,
    TResult? Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        multiselect,
  }) {
    return multiselect?.call(
        columnId,
        groupId,
        value,
        options,
        optionName,
        includeEmptyOption,
        emptyOptionName,
        optionColor,
        appliedCriteria,
        filterIcon,
        filteredIcon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String columnId,
            String groupId,
            V Function(T) value,
            List<AppliedCriterion<V>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        primitive,
    TResult Function(
            String columnId,
            String groupId,
            Set<V> Function(T) value,
            Set<V> options,
            String Function(V) optionName,
            bool includeEmptyOption,
            String emptyOptionName,
            Color? Function(V)? optionColor,
            List<AppliedCriterion<Set<V>>> appliedCriteria,
            Widget? filterIcon,
            Widget? filteredIcon)?
        multiselect,
    required TResult orElse(),
  }) {
    if (multiselect != null) {
      return multiselect(
          columnId,
          groupId,
          value,
          options,
          optionName,
          includeEmptyOption,
          emptyOptionName,
          optionColor,
          appliedCriteria,
          filterIcon,
          filteredIcon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrimitiveFilter<T, V> value) primitive,
    required TResult Function(MultiselectFilter<T, V> value) multiselect,
  }) {
    return multiselect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrimitiveFilter<T, V> value)? primitive,
    TResult? Function(MultiselectFilter<T, V> value)? multiselect,
  }) {
    return multiselect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrimitiveFilter<T, V> value)? primitive,
    TResult Function(MultiselectFilter<T, V> value)? multiselect,
    required TResult orElse(),
  }) {
    if (multiselect != null) {
      return multiselect(this);
    }
    return orElse();
  }
}

abstract class MultiselectFilter<T extends Object, V extends Object>
    extends Filter<T, V> {
  const factory MultiselectFilter(
      {required final String columnId,
      final String groupId,
      required final Set<V> Function(T) value,
      required final Set<V> options,
      required final String Function(V) optionName,
      required final bool includeEmptyOption,
      required final String emptyOptionName,
      final Color? Function(V)? optionColor,
      final List<AppliedCriterion<Set<V>>> appliedCriteria,
      final Widget? filterIcon,
      final Widget? filteredIcon}) = _$MultiselectFilterImpl<T, V>;
  const MultiselectFilter._() : super._();

  @override
  String get columnId;
  @override
  String get groupId;
  @override
  Set<V> Function(T) get value;
  Set<V> get options;
  String Function(V) get optionName;
  bool get includeEmptyOption;
  String get emptyOptionName;
  Color? Function(V)? get optionColor;
  @override
  List<AppliedCriterion<Set<V>>> get appliedCriteria;
  @override
  Widget? get filterIcon;
  @override
  Widget? get filteredIcon;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiselectFilterImplCopyWith<T, V, _$MultiselectFilterImpl<T, V>>
      get copyWith => throw _privateConstructorUsedError;
}

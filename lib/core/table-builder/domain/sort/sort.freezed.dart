// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Sort<T extends Object, V extends Object> {
  String get columnId => throw _privateConstructorUsedError;
  V Function(T) get value => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortCopyWith<T, V, Sort<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<T extends Object, V extends Object, $Res> {
  factory $SortCopyWith(Sort<T, V> value, $Res Function(Sort<T, V>) then) =
      _$SortCopyWithImpl<T, V, $Res, Sort<T, V>>;
  @useResult
  $Res call({String columnId, V Function(T) value, bool ascending});
}

/// @nodoc
class _$SortCopyWithImpl<T extends Object, V extends Object, $Res,
    $Val extends Sort<T, V>> implements $SortCopyWith<T, V, $Res> {
  _$SortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? value = null,
    Object? ascending = null,
  }) {
    return _then(_value.copyWith(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as V Function(T),
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortImplCopyWith<T extends Object, V extends Object, $Res>
    implements $SortCopyWith<T, V, $Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl<T, V> value, $Res Function(_$SortImpl<T, V>) then) =
      __$$SortImplCopyWithImpl<T, V, $Res>;
  @override
  @useResult
  $Res call({String columnId, V Function(T) value, bool ascending});
}

/// @nodoc
class __$$SortImplCopyWithImpl<T extends Object, V extends Object, $Res>
    extends _$SortCopyWithImpl<T, V, $Res, _$SortImpl<T, V>>
    implements _$$SortImplCopyWith<T, V, $Res> {
  __$$SortImplCopyWithImpl(
      _$SortImpl<T, V> _value, $Res Function(_$SortImpl<T, V>) _then)
      : super(_value, _then);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columnId = null,
    Object? value = null,
    Object? ascending = null,
  }) {
    return _then(_$SortImpl<T, V>(
      columnId: null == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as V Function(T),
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SortImpl<T extends Object, V extends Object> extends _Sort<T, V> {
  const _$SortImpl(
      {required this.columnId, required this.value, required this.ascending})
      : super._();

  @override
  final String columnId;
  @override
  final V Function(T) value;
  @override
  final bool ascending;

  @override
  String toString() {
    return 'Sort<$T, $V>(columnId: $columnId, value: $value, ascending: $ascending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl<T, V> &&
            (identical(other.columnId, columnId) ||
                other.columnId == columnId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, columnId, value, ascending);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<T, V, _$SortImpl<T, V>> get copyWith =>
      __$$SortImplCopyWithImpl<T, V, _$SortImpl<T, V>>(this, _$identity);
}

abstract class _Sort<T extends Object, V extends Object> extends Sort<T, V> {
  const factory _Sort(
      {required final String columnId,
      required final V Function(T) value,
      required final bool ascending}) = _$SortImpl<T, V>;
  const _Sort._() : super._();

  @override
  String get columnId;
  @override
  V Function(T) get value;
  @override
  bool get ascending;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortImplCopyWith<T, V, _$SortImpl<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

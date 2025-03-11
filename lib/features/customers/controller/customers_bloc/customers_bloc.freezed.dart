// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<DepotModel> depotOption) onDepotSelected,
    required TResult Function(List<CustomerModel> customers) importCustomers,
    required TResult Function(CustomerModel customer) onCustomerCreated,
    required TResult Function(CustomerModel customer) onCustomerUpdated,
    required TResult Function(UniqueId customerId) onCustomerDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult? Function(List<CustomerModel> customers)? importCustomers,
    TResult? Function(CustomerModel customer)? onCustomerCreated,
    TResult? Function(CustomerModel customer)? onCustomerUpdated,
    TResult? Function(UniqueId customerId)? onCustomerDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult Function(List<CustomerModel> customers)? importCustomers,
    TResult Function(CustomerModel customer)? onCustomerCreated,
    TResult Function(CustomerModel customer)? onCustomerUpdated,
    TResult Function(UniqueId customerId)? onCustomerDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDepotSelected value) onDepotSelected,
    required TResult Function(_ImportCustomers value) importCustomers,
    required TResult Function(_OnCustomerCreated value) onCustomerCreated,
    required TResult Function(_OnCustomerUpdated value) onCustomerUpdated,
    required TResult Function(_OnCustomerDeleted value) onCustomerDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnDepotSelected value)? onDepotSelected,
    TResult? Function(_ImportCustomers value)? importCustomers,
    TResult? Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult? Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult? Function(_OnCustomerDeleted value)? onCustomerDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDepotSelected value)? onDepotSelected,
    TResult Function(_ImportCustomers value)? importCustomers,
    TResult Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult Function(_OnCustomerDeleted value)? onCustomerDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersEventCopyWith<$Res> {
  factory $CustomersEventCopyWith(
          CustomersEvent value, $Res Function(CustomersEvent) then) =
      _$CustomersEventCopyWithImpl<$Res, CustomersEvent>;
}

/// @nodoc
class _$CustomersEventCopyWithImpl<$Res, $Val extends CustomersEvent>
    implements $CustomersEventCopyWith<$Res> {
  _$CustomersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CustomersEvent.started()';
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
    required TResult Function(Option<DepotModel> depotOption) onDepotSelected,
    required TResult Function(List<CustomerModel> customers) importCustomers,
    required TResult Function(CustomerModel customer) onCustomerCreated,
    required TResult Function(CustomerModel customer) onCustomerUpdated,
    required TResult Function(UniqueId customerId) onCustomerDeleted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult? Function(List<CustomerModel> customers)? importCustomers,
    TResult? Function(CustomerModel customer)? onCustomerCreated,
    TResult? Function(CustomerModel customer)? onCustomerUpdated,
    TResult? Function(UniqueId customerId)? onCustomerDeleted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult Function(List<CustomerModel> customers)? importCustomers,
    TResult Function(CustomerModel customer)? onCustomerCreated,
    TResult Function(CustomerModel customer)? onCustomerUpdated,
    TResult Function(UniqueId customerId)? onCustomerDeleted,
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
    required TResult Function(_OnDepotSelected value) onDepotSelected,
    required TResult Function(_ImportCustomers value) importCustomers,
    required TResult Function(_OnCustomerCreated value) onCustomerCreated,
    required TResult Function(_OnCustomerUpdated value) onCustomerUpdated,
    required TResult Function(_OnCustomerDeleted value) onCustomerDeleted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnDepotSelected value)? onDepotSelected,
    TResult? Function(_ImportCustomers value)? importCustomers,
    TResult? Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult? Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult? Function(_OnCustomerDeleted value)? onCustomerDeleted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDepotSelected value)? onDepotSelected,
    TResult Function(_ImportCustomers value)? importCustomers,
    TResult Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult Function(_OnCustomerDeleted value)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CustomersEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnDepotSelectedImplCopyWith<$Res> {
  factory _$$OnDepotSelectedImplCopyWith(_$OnDepotSelectedImpl value,
          $Res Function(_$OnDepotSelectedImpl) then) =
      __$$OnDepotSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<DepotModel> depotOption});
}

/// @nodoc
class __$$OnDepotSelectedImplCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res, _$OnDepotSelectedImpl>
    implements _$$OnDepotSelectedImplCopyWith<$Res> {
  __$$OnDepotSelectedImplCopyWithImpl(
      _$OnDepotSelectedImpl _value, $Res Function(_$OnDepotSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depotOption = null,
  }) {
    return _then(_$OnDepotSelectedImpl(
      null == depotOption
          ? _value.depotOption
          : depotOption // ignore: cast_nullable_to_non_nullable
              as Option<DepotModel>,
    ));
  }
}

/// @nodoc

class _$OnDepotSelectedImpl implements _OnDepotSelected {
  const _$OnDepotSelectedImpl(this.depotOption);

  @override
  final Option<DepotModel> depotOption;

  @override
  String toString() {
    return 'CustomersEvent.onDepotSelected(depotOption: $depotOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDepotSelectedImpl &&
            (identical(other.depotOption, depotOption) ||
                other.depotOption == depotOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, depotOption);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDepotSelectedImplCopyWith<_$OnDepotSelectedImpl> get copyWith =>
      __$$OnDepotSelectedImplCopyWithImpl<_$OnDepotSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<DepotModel> depotOption) onDepotSelected,
    required TResult Function(List<CustomerModel> customers) importCustomers,
    required TResult Function(CustomerModel customer) onCustomerCreated,
    required TResult Function(CustomerModel customer) onCustomerUpdated,
    required TResult Function(UniqueId customerId) onCustomerDeleted,
  }) {
    return onDepotSelected(depotOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult? Function(List<CustomerModel> customers)? importCustomers,
    TResult? Function(CustomerModel customer)? onCustomerCreated,
    TResult? Function(CustomerModel customer)? onCustomerUpdated,
    TResult? Function(UniqueId customerId)? onCustomerDeleted,
  }) {
    return onDepotSelected?.call(depotOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult Function(List<CustomerModel> customers)? importCustomers,
    TResult Function(CustomerModel customer)? onCustomerCreated,
    TResult Function(CustomerModel customer)? onCustomerUpdated,
    TResult Function(UniqueId customerId)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (onDepotSelected != null) {
      return onDepotSelected(depotOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDepotSelected value) onDepotSelected,
    required TResult Function(_ImportCustomers value) importCustomers,
    required TResult Function(_OnCustomerCreated value) onCustomerCreated,
    required TResult Function(_OnCustomerUpdated value) onCustomerUpdated,
    required TResult Function(_OnCustomerDeleted value) onCustomerDeleted,
  }) {
    return onDepotSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnDepotSelected value)? onDepotSelected,
    TResult? Function(_ImportCustomers value)? importCustomers,
    TResult? Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult? Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult? Function(_OnCustomerDeleted value)? onCustomerDeleted,
  }) {
    return onDepotSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDepotSelected value)? onDepotSelected,
    TResult Function(_ImportCustomers value)? importCustomers,
    TResult Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult Function(_OnCustomerDeleted value)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (onDepotSelected != null) {
      return onDepotSelected(this);
    }
    return orElse();
  }
}

abstract class _OnDepotSelected implements CustomersEvent {
  const factory _OnDepotSelected(final Option<DepotModel> depotOption) =
      _$OnDepotSelectedImpl;

  Option<DepotModel> get depotOption;

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnDepotSelectedImplCopyWith<_$OnDepotSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportCustomersImplCopyWith<$Res> {
  factory _$$ImportCustomersImplCopyWith(_$ImportCustomersImpl value,
          $Res Function(_$ImportCustomersImpl) then) =
      __$$ImportCustomersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerModel> customers});
}

/// @nodoc
class __$$ImportCustomersImplCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res, _$ImportCustomersImpl>
    implements _$$ImportCustomersImplCopyWith<$Res> {
  __$$ImportCustomersImplCopyWithImpl(
      _$ImportCustomersImpl _value, $Res Function(_$ImportCustomersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
  }) {
    return _then(_$ImportCustomersImpl(
      null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
    ));
  }
}

/// @nodoc

class _$ImportCustomersImpl implements _ImportCustomers {
  const _$ImportCustomersImpl(final List<CustomerModel> customers)
      : _customers = customers;

  final List<CustomerModel> _customers;
  @override
  List<CustomerModel> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  String toString() {
    return 'CustomersEvent.importCustomers(customers: $customers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportCustomersImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportCustomersImplCopyWith<_$ImportCustomersImpl> get copyWith =>
      __$$ImportCustomersImplCopyWithImpl<_$ImportCustomersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<DepotModel> depotOption) onDepotSelected,
    required TResult Function(List<CustomerModel> customers) importCustomers,
    required TResult Function(CustomerModel customer) onCustomerCreated,
    required TResult Function(CustomerModel customer) onCustomerUpdated,
    required TResult Function(UniqueId customerId) onCustomerDeleted,
  }) {
    return importCustomers(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult? Function(List<CustomerModel> customers)? importCustomers,
    TResult? Function(CustomerModel customer)? onCustomerCreated,
    TResult? Function(CustomerModel customer)? onCustomerUpdated,
    TResult? Function(UniqueId customerId)? onCustomerDeleted,
  }) {
    return importCustomers?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult Function(List<CustomerModel> customers)? importCustomers,
    TResult Function(CustomerModel customer)? onCustomerCreated,
    TResult Function(CustomerModel customer)? onCustomerUpdated,
    TResult Function(UniqueId customerId)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (importCustomers != null) {
      return importCustomers(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDepotSelected value) onDepotSelected,
    required TResult Function(_ImportCustomers value) importCustomers,
    required TResult Function(_OnCustomerCreated value) onCustomerCreated,
    required TResult Function(_OnCustomerUpdated value) onCustomerUpdated,
    required TResult Function(_OnCustomerDeleted value) onCustomerDeleted,
  }) {
    return importCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnDepotSelected value)? onDepotSelected,
    TResult? Function(_ImportCustomers value)? importCustomers,
    TResult? Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult? Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult? Function(_OnCustomerDeleted value)? onCustomerDeleted,
  }) {
    return importCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDepotSelected value)? onDepotSelected,
    TResult Function(_ImportCustomers value)? importCustomers,
    TResult Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult Function(_OnCustomerDeleted value)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (importCustomers != null) {
      return importCustomers(this);
    }
    return orElse();
  }
}

abstract class _ImportCustomers implements CustomersEvent {
  const factory _ImportCustomers(final List<CustomerModel> customers) =
      _$ImportCustomersImpl;

  List<CustomerModel> get customers;

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImportCustomersImplCopyWith<_$ImportCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCustomerCreatedImplCopyWith<$Res> {
  factory _$$OnCustomerCreatedImplCopyWith(_$OnCustomerCreatedImpl value,
          $Res Function(_$OnCustomerCreatedImpl) then) =
      __$$OnCustomerCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerModel customer});

  $CustomerModelCopyWith<$Res> get customer;
}

/// @nodoc
class __$$OnCustomerCreatedImplCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res, _$OnCustomerCreatedImpl>
    implements _$$OnCustomerCreatedImplCopyWith<$Res> {
  __$$OnCustomerCreatedImplCopyWithImpl(_$OnCustomerCreatedImpl _value,
      $Res Function(_$OnCustomerCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$OnCustomerCreatedImpl(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
    ));
  }

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerModelCopyWith<$Res> get customer {
    return $CustomerModelCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$OnCustomerCreatedImpl implements _OnCustomerCreated {
  const _$OnCustomerCreatedImpl(this.customer);

  @override
  final CustomerModel customer;

  @override
  String toString() {
    return 'CustomersEvent.onCustomerCreated(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCustomerCreatedImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCustomerCreatedImplCopyWith<_$OnCustomerCreatedImpl> get copyWith =>
      __$$OnCustomerCreatedImplCopyWithImpl<_$OnCustomerCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<DepotModel> depotOption) onDepotSelected,
    required TResult Function(List<CustomerModel> customers) importCustomers,
    required TResult Function(CustomerModel customer) onCustomerCreated,
    required TResult Function(CustomerModel customer) onCustomerUpdated,
    required TResult Function(UniqueId customerId) onCustomerDeleted,
  }) {
    return onCustomerCreated(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult? Function(List<CustomerModel> customers)? importCustomers,
    TResult? Function(CustomerModel customer)? onCustomerCreated,
    TResult? Function(CustomerModel customer)? onCustomerUpdated,
    TResult? Function(UniqueId customerId)? onCustomerDeleted,
  }) {
    return onCustomerCreated?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult Function(List<CustomerModel> customers)? importCustomers,
    TResult Function(CustomerModel customer)? onCustomerCreated,
    TResult Function(CustomerModel customer)? onCustomerUpdated,
    TResult Function(UniqueId customerId)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (onCustomerCreated != null) {
      return onCustomerCreated(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDepotSelected value) onDepotSelected,
    required TResult Function(_ImportCustomers value) importCustomers,
    required TResult Function(_OnCustomerCreated value) onCustomerCreated,
    required TResult Function(_OnCustomerUpdated value) onCustomerUpdated,
    required TResult Function(_OnCustomerDeleted value) onCustomerDeleted,
  }) {
    return onCustomerCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnDepotSelected value)? onDepotSelected,
    TResult? Function(_ImportCustomers value)? importCustomers,
    TResult? Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult? Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult? Function(_OnCustomerDeleted value)? onCustomerDeleted,
  }) {
    return onCustomerCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDepotSelected value)? onDepotSelected,
    TResult Function(_ImportCustomers value)? importCustomers,
    TResult Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult Function(_OnCustomerDeleted value)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (onCustomerCreated != null) {
      return onCustomerCreated(this);
    }
    return orElse();
  }
}

abstract class _OnCustomerCreated implements CustomersEvent {
  const factory _OnCustomerCreated(final CustomerModel customer) =
      _$OnCustomerCreatedImpl;

  CustomerModel get customer;

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnCustomerCreatedImplCopyWith<_$OnCustomerCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCustomerUpdatedImplCopyWith<$Res> {
  factory _$$OnCustomerUpdatedImplCopyWith(_$OnCustomerUpdatedImpl value,
          $Res Function(_$OnCustomerUpdatedImpl) then) =
      __$$OnCustomerUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerModel customer});

  $CustomerModelCopyWith<$Res> get customer;
}

/// @nodoc
class __$$OnCustomerUpdatedImplCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res, _$OnCustomerUpdatedImpl>
    implements _$$OnCustomerUpdatedImplCopyWith<$Res> {
  __$$OnCustomerUpdatedImplCopyWithImpl(_$OnCustomerUpdatedImpl _value,
      $Res Function(_$OnCustomerUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$OnCustomerUpdatedImpl(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
    ));
  }

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerModelCopyWith<$Res> get customer {
    return $CustomerModelCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$OnCustomerUpdatedImpl implements _OnCustomerUpdated {
  const _$OnCustomerUpdatedImpl(this.customer);

  @override
  final CustomerModel customer;

  @override
  String toString() {
    return 'CustomersEvent.onCustomerUpdated(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCustomerUpdatedImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCustomerUpdatedImplCopyWith<_$OnCustomerUpdatedImpl> get copyWith =>
      __$$OnCustomerUpdatedImplCopyWithImpl<_$OnCustomerUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<DepotModel> depotOption) onDepotSelected,
    required TResult Function(List<CustomerModel> customers) importCustomers,
    required TResult Function(CustomerModel customer) onCustomerCreated,
    required TResult Function(CustomerModel customer) onCustomerUpdated,
    required TResult Function(UniqueId customerId) onCustomerDeleted,
  }) {
    return onCustomerUpdated(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult? Function(List<CustomerModel> customers)? importCustomers,
    TResult? Function(CustomerModel customer)? onCustomerCreated,
    TResult? Function(CustomerModel customer)? onCustomerUpdated,
    TResult? Function(UniqueId customerId)? onCustomerDeleted,
  }) {
    return onCustomerUpdated?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult Function(List<CustomerModel> customers)? importCustomers,
    TResult Function(CustomerModel customer)? onCustomerCreated,
    TResult Function(CustomerModel customer)? onCustomerUpdated,
    TResult Function(UniqueId customerId)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (onCustomerUpdated != null) {
      return onCustomerUpdated(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDepotSelected value) onDepotSelected,
    required TResult Function(_ImportCustomers value) importCustomers,
    required TResult Function(_OnCustomerCreated value) onCustomerCreated,
    required TResult Function(_OnCustomerUpdated value) onCustomerUpdated,
    required TResult Function(_OnCustomerDeleted value) onCustomerDeleted,
  }) {
    return onCustomerUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnDepotSelected value)? onDepotSelected,
    TResult? Function(_ImportCustomers value)? importCustomers,
    TResult? Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult? Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult? Function(_OnCustomerDeleted value)? onCustomerDeleted,
  }) {
    return onCustomerUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDepotSelected value)? onDepotSelected,
    TResult Function(_ImportCustomers value)? importCustomers,
    TResult Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult Function(_OnCustomerDeleted value)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (onCustomerUpdated != null) {
      return onCustomerUpdated(this);
    }
    return orElse();
  }
}

abstract class _OnCustomerUpdated implements CustomersEvent {
  const factory _OnCustomerUpdated(final CustomerModel customer) =
      _$OnCustomerUpdatedImpl;

  CustomerModel get customer;

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnCustomerUpdatedImplCopyWith<_$OnCustomerUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCustomerDeletedImplCopyWith<$Res> {
  factory _$$OnCustomerDeletedImplCopyWith(_$OnCustomerDeletedImpl value,
          $Res Function(_$OnCustomerDeletedImpl) then) =
      __$$OnCustomerDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId customerId});
}

/// @nodoc
class __$$OnCustomerDeletedImplCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res, _$OnCustomerDeletedImpl>
    implements _$$OnCustomerDeletedImplCopyWith<$Res> {
  __$$OnCustomerDeletedImplCopyWithImpl(_$OnCustomerDeletedImpl _value,
      $Res Function(_$OnCustomerDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$OnCustomerDeletedImpl(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$OnCustomerDeletedImpl implements _OnCustomerDeleted {
  const _$OnCustomerDeletedImpl(this.customerId);

  @override
  final UniqueId customerId;

  @override
  String toString() {
    return 'CustomersEvent.onCustomerDeleted(customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCustomerDeletedImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCustomerDeletedImplCopyWith<_$OnCustomerDeletedImpl> get copyWith =>
      __$$OnCustomerDeletedImplCopyWithImpl<_$OnCustomerDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<DepotModel> depotOption) onDepotSelected,
    required TResult Function(List<CustomerModel> customers) importCustomers,
    required TResult Function(CustomerModel customer) onCustomerCreated,
    required TResult Function(CustomerModel customer) onCustomerUpdated,
    required TResult Function(UniqueId customerId) onCustomerDeleted,
  }) {
    return onCustomerDeleted(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult? Function(List<CustomerModel> customers)? importCustomers,
    TResult? Function(CustomerModel customer)? onCustomerCreated,
    TResult? Function(CustomerModel customer)? onCustomerUpdated,
    TResult? Function(UniqueId customerId)? onCustomerDeleted,
  }) {
    return onCustomerDeleted?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<DepotModel> depotOption)? onDepotSelected,
    TResult Function(List<CustomerModel> customers)? importCustomers,
    TResult Function(CustomerModel customer)? onCustomerCreated,
    TResult Function(CustomerModel customer)? onCustomerUpdated,
    TResult Function(UniqueId customerId)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (onCustomerDeleted != null) {
      return onCustomerDeleted(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDepotSelected value) onDepotSelected,
    required TResult Function(_ImportCustomers value) importCustomers,
    required TResult Function(_OnCustomerCreated value) onCustomerCreated,
    required TResult Function(_OnCustomerUpdated value) onCustomerUpdated,
    required TResult Function(_OnCustomerDeleted value) onCustomerDeleted,
  }) {
    return onCustomerDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnDepotSelected value)? onDepotSelected,
    TResult? Function(_ImportCustomers value)? importCustomers,
    TResult? Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult? Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult? Function(_OnCustomerDeleted value)? onCustomerDeleted,
  }) {
    return onCustomerDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDepotSelected value)? onDepotSelected,
    TResult Function(_ImportCustomers value)? importCustomers,
    TResult Function(_OnCustomerCreated value)? onCustomerCreated,
    TResult Function(_OnCustomerUpdated value)? onCustomerUpdated,
    TResult Function(_OnCustomerDeleted value)? onCustomerDeleted,
    required TResult orElse(),
  }) {
    if (onCustomerDeleted != null) {
      return onCustomerDeleted(this);
    }
    return orElse();
  }
}

abstract class _OnCustomerDeleted implements CustomersEvent {
  const factory _OnCustomerDeleted(final UniqueId customerId) =
      _$OnCustomerDeletedImpl;

  UniqueId get customerId;

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnCustomerDeletedImplCopyWith<_$OnCustomerDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomersState {
  List<CustomerModel> get customers => throw _privateConstructorUsedError;
  Set<Tag> get tags => throw _privateConstructorUsedError;
  Set<DepotModel> get depots => throw _privateConstructorUsedError;
  bool get currentUserIsAdmin => throw _privateConstructorUsedError;
  DepotAccessPolicy get currentUserDepotAccessPolicy =>
      throw _privateConstructorUsedError;
  Option<DepotModel> get selectedDepotOption =>
      throw _privateConstructorUsedError;
  int get customersUpdated => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomersStateCopyWith<CustomersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersStateCopyWith<$Res> {
  factory $CustomersStateCopyWith(
          CustomersState value, $Res Function(CustomersState) then) =
      _$CustomersStateCopyWithImpl<$Res, CustomersState>;
  @useResult
  $Res call(
      {List<CustomerModel> customers,
      Set<Tag> tags,
      Set<DepotModel> depots,
      bool currentUserIsAdmin,
      DepotAccessPolicy currentUserDepotAccessPolicy,
      Option<DepotModel> selectedDepotOption,
      int customersUpdated,
      bool isLoading,
      bool hasError});

  $DepotAccessPolicyCopyWith<$Res> get currentUserDepotAccessPolicy;
}

/// @nodoc
class _$CustomersStateCopyWithImpl<$Res, $Val extends CustomersState>
    implements $CustomersStateCopyWith<$Res> {
  _$CustomersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? tags = null,
    Object? depots = null,
    Object? currentUserIsAdmin = null,
    Object? currentUserDepotAccessPolicy = null,
    Object? selectedDepotOption = null,
    Object? customersUpdated = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Set<Tag>,
      depots: null == depots
          ? _value.depots
          : depots // ignore: cast_nullable_to_non_nullable
              as Set<DepotModel>,
      currentUserIsAdmin: null == currentUserIsAdmin
          ? _value.currentUserIsAdmin
          : currentUserIsAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUserDepotAccessPolicy: null == currentUserDepotAccessPolicy
          ? _value.currentUserDepotAccessPolicy
          : currentUserDepotAccessPolicy // ignore: cast_nullable_to_non_nullable
              as DepotAccessPolicy,
      selectedDepotOption: null == selectedDepotOption
          ? _value.selectedDepotOption
          : selectedDepotOption // ignore: cast_nullable_to_non_nullable
              as Option<DepotModel>,
      customersUpdated: null == customersUpdated
          ? _value.customersUpdated
          : customersUpdated // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepotAccessPolicyCopyWith<$Res> get currentUserDepotAccessPolicy {
    return $DepotAccessPolicyCopyWith<$Res>(_value.currentUserDepotAccessPolicy,
        (value) {
      return _then(
          _value.copyWith(currentUserDepotAccessPolicy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomersStateImplCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$CustomersStateImplCopyWith(_$CustomersStateImpl value,
          $Res Function(_$CustomersStateImpl) then) =
      __$$CustomersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerModel> customers,
      Set<Tag> tags,
      Set<DepotModel> depots,
      bool currentUserIsAdmin,
      DepotAccessPolicy currentUserDepotAccessPolicy,
      Option<DepotModel> selectedDepotOption,
      int customersUpdated,
      bool isLoading,
      bool hasError});

  @override
  $DepotAccessPolicyCopyWith<$Res> get currentUserDepotAccessPolicy;
}

/// @nodoc
class __$$CustomersStateImplCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$CustomersStateImpl>
    implements _$$CustomersStateImplCopyWith<$Res> {
  __$$CustomersStateImplCopyWithImpl(
      _$CustomersStateImpl _value, $Res Function(_$CustomersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? tags = null,
    Object? depots = null,
    Object? currentUserIsAdmin = null,
    Object? currentUserDepotAccessPolicy = null,
    Object? selectedDepotOption = null,
    Object? customersUpdated = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$CustomersStateImpl(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Set<Tag>,
      depots: null == depots
          ? _value._depots
          : depots // ignore: cast_nullable_to_non_nullable
              as Set<DepotModel>,
      currentUserIsAdmin: null == currentUserIsAdmin
          ? _value.currentUserIsAdmin
          : currentUserIsAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUserDepotAccessPolicy: null == currentUserDepotAccessPolicy
          ? _value.currentUserDepotAccessPolicy
          : currentUserDepotAccessPolicy // ignore: cast_nullable_to_non_nullable
              as DepotAccessPolicy,
      selectedDepotOption: null == selectedDepotOption
          ? _value.selectedDepotOption
          : selectedDepotOption // ignore: cast_nullable_to_non_nullable
              as Option<DepotModel>,
      customersUpdated: null == customersUpdated
          ? _value.customersUpdated
          : customersUpdated // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CustomersStateImpl extends _CustomersState {
  const _$CustomersStateImpl(
      {required final List<CustomerModel> customers,
      required final Set<Tag> tags,
      required final Set<DepotModel> depots,
      required this.currentUserIsAdmin,
      required this.currentUserDepotAccessPolicy,
      required this.selectedDepotOption,
      required this.customersUpdated,
      required this.isLoading,
      required this.hasError})
      : _customers = customers,
        _tags = tags,
        _depots = depots,
        super._();

  final List<CustomerModel> _customers;
  @override
  List<CustomerModel> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  final Set<Tag> _tags;
  @override
  Set<Tag> get tags {
    if (_tags is EqualUnmodifiableSetView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_tags);
  }

  final Set<DepotModel> _depots;
  @override
  Set<DepotModel> get depots {
    if (_depots is EqualUnmodifiableSetView) return _depots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_depots);
  }

  @override
  final bool currentUserIsAdmin;
  @override
  final DepotAccessPolicy currentUserDepotAccessPolicy;
  @override
  final Option<DepotModel> selectedDepotOption;
  @override
  final int customersUpdated;
  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'CustomersState(customers: $customers, tags: $tags, depots: $depots, currentUserIsAdmin: $currentUserIsAdmin, currentUserDepotAccessPolicy: $currentUserDepotAccessPolicy, selectedDepotOption: $selectedDepotOption, customersUpdated: $customersUpdated, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._depots, _depots) &&
            (identical(other.currentUserIsAdmin, currentUserIsAdmin) ||
                other.currentUserIsAdmin == currentUserIsAdmin) &&
            (identical(other.currentUserDepotAccessPolicy,
                    currentUserDepotAccessPolicy) ||
                other.currentUserDepotAccessPolicy ==
                    currentUserDepotAccessPolicy) &&
            (identical(other.selectedDepotOption, selectedDepotOption) ||
                other.selectedDepotOption == selectedDepotOption) &&
            (identical(other.customersUpdated, customersUpdated) ||
                other.customersUpdated == customersUpdated) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customers),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_depots),
      currentUserIsAdmin,
      currentUserDepotAccessPolicy,
      selectedDepotOption,
      customersUpdated,
      isLoading,
      hasError);

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersStateImplCopyWith<_$CustomersStateImpl> get copyWith =>
      __$$CustomersStateImplCopyWithImpl<_$CustomersStateImpl>(
          this, _$identity);
}

abstract class _CustomersState extends CustomersState {
  const factory _CustomersState(
      {required final List<CustomerModel> customers,
      required final Set<Tag> tags,
      required final Set<DepotModel> depots,
      required final bool currentUserIsAdmin,
      required final DepotAccessPolicy currentUserDepotAccessPolicy,
      required final Option<DepotModel> selectedDepotOption,
      required final int customersUpdated,
      required final bool isLoading,
      required final bool hasError}) = _$CustomersStateImpl;
  const _CustomersState._() : super._();

  @override
  List<CustomerModel> get customers;
  @override
  Set<Tag> get tags;
  @override
  Set<DepotModel> get depots;
  @override
  bool get currentUserIsAdmin;
  @override
  DepotAccessPolicy get currentUserDepotAccessPolicy;
  @override
  Option<DepotModel> get selectedDepotOption;
  @override
  int get customersUpdated;
  @override
  bool get isLoading;
  @override
  bool get hasError;

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomersStateImplCopyWith<_$CustomersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

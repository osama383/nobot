part of 'customers_bloc.dart';

@freezed
class CustomersEvent with _$CustomersEvent {
  const factory CustomersEvent.started() = _Started;
  const factory CustomersEvent.onDepotSelected(
    Option<DepotModel> depotOption,
  ) = _OnDepotSelected;
  const factory CustomersEvent.importCustomers(
    List<CustomerModel> customers,
  ) = _ImportCustomers;
  const factory CustomersEvent.onCustomerCreated(
    CustomerModel customer,
  ) = _OnCustomerCreated;
  const factory CustomersEvent.onCustomerUpdated(
    CustomerModel customer,
  ) = _OnCustomerUpdated;
  const factory CustomersEvent.onCustomerDeleted(
    UniqueId customerId,
  ) = _OnCustomerDeleted;
}

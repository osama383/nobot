part of 'customers_bloc.dart';

@freezed
class CustomersEvent with _$CustomersEvent {
  const factory CustomersEvent.started() = _Started;
  const factory CustomersEvent.onDepotSelected(
    Option<Depot> depotOption,
  ) = _OnDepotSelected;
  const factory CustomersEvent.importCustomers(
    List<Customer> customers,
  ) = _ImportCustomers;
  const factory CustomersEvent.onCustomerCreated(
    Customer customer,
  ) = _OnCustomerCreated;
  const factory CustomersEvent.onCustomerUpdated(
    Customer customer,
  ) = _OnCustomerUpdated;
  const factory CustomersEvent.onCustomerDeleted(
    UniqueId customerId,
  ) = _OnCustomerDeleted;
}

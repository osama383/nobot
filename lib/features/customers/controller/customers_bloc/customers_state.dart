part of 'customers_bloc.dart';

@freezed
class CustomersState with _$CustomersState {
  const CustomersState._();
  const factory CustomersState({
    required List<Customer> customers,
    required Set<Tag> tags,
    required Set<Depot> depots,
    required Option<Depot> selectedDepotOption,
    required int customersUpdated,
    required bool isLoading,
    required bool hasError,
  }) = _CustomersState;

  factory CustomersState.initial() => _CustomersState(
        customers: [],
        depots: {},
        tags: {},
        selectedDepotOption: none(),
        customersUpdated: 0,
        isLoading: true,
        hasError: false,
      );
}

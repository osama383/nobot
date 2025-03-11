part of 'customers_bloc.dart';

@freezed
class CustomersState with _$CustomersState {
  const CustomersState._();
  const factory CustomersState({
    required List<CustomerModel> customers,
    required Set<Tag> tags,
    required Set<DepotModel> depots,
    required bool currentUserIsAdmin,
    required DepotAccessPolicy currentUserDepotAccessPolicy,
    required Option<DepotModel> selectedDepotOption,
    required int customersUpdated,
    required bool isLoading,
    required bool hasError,
  }) = _CustomersState;

  factory CustomersState.initial() => _CustomersState(
        customers: [],
        depots: {},
        tags: {},
        currentUserIsAdmin: false,
        currentUserDepotAccessPolicy: const DepotAccessPolicy.unrestricted(),
        selectedDepotOption: none(),
        customersUpdated: 0,
        isLoading: true,
        hasError: false,
      );
}

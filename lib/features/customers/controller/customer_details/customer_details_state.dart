part of 'customer_details_bloc.dart';

@freezed
class CustomerDetailsState with _$CustomerDetailsState {
  const factory CustomerDetailsState({
    required Customer customer,
  }) = _CustomerDetailsState;
}

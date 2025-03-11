part of 'customer_details_bloc.dart';

@freezed
class CustomerDetailsEvent with _$CustomerDetailsEvent {
  const factory CustomerDetailsEvent.started() = _Started;
}
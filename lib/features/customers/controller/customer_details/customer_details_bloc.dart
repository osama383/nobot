import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/customer/customer.dart';

part 'customer_details_event.dart';
part 'customer_details_state.dart';
part 'customer_details_bloc.freezed.dart';

class CustomerDetailsBloc
    extends Bloc<CustomerDetailsEvent, CustomerDetailsState> {
  CustomerDetailsBloc(Customer customer)
      : super(CustomerDetailsState(customer: customer)) {
    on<CustomerDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

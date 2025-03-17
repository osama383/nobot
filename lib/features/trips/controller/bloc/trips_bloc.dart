import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';

import '../../../../core/models/tasks/service_grease/service_grease.dart';
import '../../../../core/repository.dart';

part 'trips_event.dart';
part 'trips_state.dart';
part 'trips_bloc.mapper.dart';

class TripsBloc extends Bloc<TripsEvent, TripsState> {
  TripsBloc(Repository repo) : super(TripsState.initial()) {
    repo.listTrips().listen((trips) {
      add(OnTripsReceived(trips));
    });
    on<TripsEvent>((event, emit) async {
      switch (event) {
        case OnTripsReceived event:
          emit(state.copyWith(isLoading: false, trips: event.trips));
      }
    });
  }
}

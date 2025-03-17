part of 'trips_bloc.dart';

sealed class TripsEvent {}

class OnTripsReceived extends TripsEvent {
  final List<Trip> trips;

  OnTripsReceived(this.trips);
}

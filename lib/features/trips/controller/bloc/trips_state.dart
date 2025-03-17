part of 'trips_bloc.dart';

@MappableClass()
class TripsState with TripsStateMappable {
  final bool isLoading;
  final List<Trip> trips;

  TripsState({
    required this.trips,
    required this.isLoading,
  });

  factory TripsState.initial() {
    return TripsState(
      trips: [],
      isLoading: true,
    );
  }
}

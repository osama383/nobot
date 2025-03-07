part of 'assets_bloc.dart';

@freezed
class AssetsEvent with _$AssetsEvent {
  const factory AssetsEvent.started() = _Started;
  const factory AssetsEvent.fetchDepots() = _FetchDepots;
  const factory AssetsEvent.fetchVehicles() = _FetchVehicles;
  const factory AssetsEvent.fetchContainers() = _FetchContainers;
}

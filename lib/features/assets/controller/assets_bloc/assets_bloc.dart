import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/assets/assets.dart';
import '../../../../core/models/failure/failure.dart';

part 'assets_event.dart';
part 'assets_state.dart';
part 'assets_bloc.freezed.dart';

class AssetsBloc extends Bloc<AssetsEvent, AssetsState> {
  AssetsBloc() : super(AssetsState.initial()) {
    on<AssetsEvent>((event, emit) async {
      await event.map(
        started: (event) async {
          // final depotsOrFailure = await depotsRepo.fetchDepots();
          // final vehiclesOrFailure = await vehiclesRepo.fetchVehicles();
          // final containersOrFailure = await containersRepo.listContainers();

          // emit(
          //   state.copyWith(
          //     depotsOrFailureOption: some(depotsOrFailure),
          //     vehiclesOrFailureOption: some(vehiclesOrFailure),
          //     containersOrFailureOption: some(containersOrFailure),
          //   ),
          // );
        },
        fetchDepots: (event) async {
          // final depotsOrFailure = await depotsRepo.fetchDepots();

          // emit(
          //   state.copyWith(
          //     depotsOrFailureOption: some(depotsOrFailure),
          //   ),
          // );
        },
        fetchVehicles: (event) async {
          // final vehiclesOrFailure = await vehiclesRepo.fetchVehicles();

          // emit(
          //   state.copyWith(
          //     vehiclesOrFailureOption: some(vehiclesOrFailure),
          //   ),
          // );
        },
        fetchContainers: (event) async {
          // final containersOrFailure = await containersRepo.listContainers();

          // emit(
          //   state.copyWith(
          //     containersOrFailureOption: some(containersOrFailure),
          //   ),
          // );
        },
      );
    });
  }
}

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/hot_and_new/i_hot_and_new_repo.dart';
import '../../domain/hot_and_new/models/hot_and_new_model.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@Injectable()
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final IHotAndNewRepo _iHotAndNewRepo;
  HotAndNewBloc(this._iHotAndNewRepo) : super(HotAndNewState.initial()) {
    on<InitializeComingSoon>((event, emit) async {
      if (state.comingSoonList.results!.isNotEmpty) {
        emit(state);
        return;
      }
      emit(state.copyWith(
          comingSoonList: HotAndNewModel(results: []),
          isError: false,
          isLoading: true));

      final data = await _iHotAndNewRepo.getComingSoon();
      log(data.toString());
      data.fold(
        (failure) => emit(HotAndNewState(
          comingSoonList: HotAndNewModel(results: []),
          everyonesWatchingList: state.everyonesWatchingList,
          isLoading: false,
          isError: true,
        )),
        (comingSoonList) => emit(HotAndNewState(
          comingSoonList: comingSoonList,
          everyonesWatchingList: state.everyonesWatchingList,
          isLoading: false,
          isError: false,
        )),
      );
    });
    on<InitializeEveryonesWatching>((event, emit) async {
      if (state.everyonesWatchingList.results!.isNotEmpty) {
        emit(state);
        return;
      }
      emit(
        state.copyWith(
          everyonesWatchingList: HotAndNewModel(results: []),
          isError: false,
          isLoading: true,
        ),
      );
      final data = await _iHotAndNewRepo.getEveryonesWatching();
      data.fold(
        (failure) => emit(HotAndNewState(
          comingSoonList: state.comingSoonList,
          everyonesWatchingList: HotAndNewModel(results: []),
          isLoading: false,
          isError: true,
        )),
        (everyonesWatchingList) => emit(HotAndNewState(
          comingSoonList: state.comingSoonList,
          everyonesWatchingList: everyonesWatchingList,
          isLoading: false,
          isError: false,
        )),
      );
    });
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/model_downloads.dart';
import 'package:netflix/domain/search/i_search_repo.dart';

import '../../domain/search/models/model_top_search.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IDownloadsRepo _downloadsRepo;

  HomeBloc(this._downloadsRepo) : super(HomeState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.releasedInThePastYearList.isNotEmpty &&
          state.top10TVShowsInIndiaTodayList.isNotEmpty) {
        return;
      }
      emit(HomeState.initial());

      final _downloadsResult = await _downloadsRepo.getDownloadsImages();
      _downloadsResult.fold(
        (failure) => emit(
          const HomeState(
            releasedInThePastYearList: [],
            trendingNowList: [],
            top10TVShowsInIndiaTodayList: [],
            tenseDramaList: [],
            isLoading: false,
            isError: true,
          ),
        ),
        (downloadsModelResult) => emit(
          HomeState(
            releasedInThePastYearList: downloadsModelResult,
            trendingNowList: downloadsModelResult,
            top10TVShowsInIndiaTodayList: downloadsModelResult,
            tenseDramaList: downloadsModelResult,
            isLoading: false,
            isError: false,
          ),
        ),
      );
    });
  }
}

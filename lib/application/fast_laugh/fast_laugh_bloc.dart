import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/search/i_search_repo.dart';

import '../../domain/search/models/model_top_search.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final ValueNotifier<List<String>> likedMovies = ValueNotifier([]);

@Injectable()
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  final ISearchRepo searchRepo;
  FastLaughBloc(this.searchRepo) : super(FastLaughState.initial()) {
    on<Initialize>(
      (event, emit) async {
        emit(const FastLaughState(
            isLoading: true, isError: false, profileList: []));
        final Either<MainFailure, List<TopSearchModel>> profileList =
            await searchRepo.getTopSearch();

        final _state = profileList.fold(
          (failure) => state.copyWith(
            isLoading: false,
            isError: true,
            profileList: [],
          ),
          (success) => state.copyWith(
            isLoading: false,
            isError: false,
            profileList: success,
          ),
        );
        emit(_state);
      },
    );
  }
}

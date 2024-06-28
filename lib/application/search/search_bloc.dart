import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/search/i_search_repo.dart';
import 'package:netflix/domain/search/models/model_search.dart';
import 'package:netflix/domain/search/models/model_top_search.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@Injectable()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepo iSearchRepo;
  SearchBloc(this.iSearchRepo) : super(SearchState.initial()) {
    on<_GetTopSearch>(
      (event, emit) async {
        if (state.topSearch.isNotEmpty) {
          emit(state);
          return;
        }
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final Either<MainFailure, List<TopSearchModel>> topSearchOption =
            await iSearchRepo.getTopSearch();
        emit(
          topSearchOption.fold(
            (failure) => state.copyWith(
              isLoading: false,
              isError: true,
            ),
            (success) => state.copyWith(
              isLoading: false,
              isError: false,
              topSearch: success,
              searchResult: [],
            ),
          ),
        );
      },
    );
    on<_Search>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));

      final Either<MainFailure, List<SearchModel>> topSearchOption =
          await iSearchRepo.searchMovie(event.query);
      emit(
        topSearchOption.fold(
          (failure) => state.copyWith(
            isError: true,
            isLoading: false,
          ),
          (success) => state.copyWith(
            isError: false,
            isLoading: false,
            searchResult: success,
          ),
        ),
      );
    });
  }
}

part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchModel> searchResult,
    required List<TopSearchModel> topSearch,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
      searchResult: [], topSearch: [], isLoading: true, isError: false);
}

part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getTopSearch() = _GetTopSearch;
  const factory SearchEvent.search(String query) = _Search;
}

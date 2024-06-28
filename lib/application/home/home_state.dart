part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<DownloadsModel> releasedInThePastYearList,
    required List<DownloadsModel> trendingNowList,
    required List<DownloadsModel> top10TVShowsInIndiaTodayList,
    required List<DownloadsModel> tenseDramaList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;
  factory HomeState.initial() => const HomeState(
        releasedInThePastYearList: [],
        trendingNowList: [],
        top10TVShowsInIndiaTodayList: [],
        tenseDramaList: [],
        isLoading: true,
        isError: false,
      );
}

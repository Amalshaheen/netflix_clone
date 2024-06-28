part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required HotAndNewModel comingSoonList,
    required HotAndNewModel everyonesWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HotAndNewState.initial() => HotAndNewState(
        comingSoonList: HotAndNewModel(results: []),
        everyonesWatchingList: HotAndNewModel(results: []),
        isLoading: true,
        isError: false,
      );
}

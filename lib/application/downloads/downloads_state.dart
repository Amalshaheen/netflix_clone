part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<DownloadsModel> downloads,
    required Option<Either<MainFailure, List<DownloadsModel>>>
        downloadsSuccesOrFailure,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return DownloadsState(
      isLoading: false,
      downloadsSuccesOrFailure: none(),
      downloads: [],
    );
  }
}

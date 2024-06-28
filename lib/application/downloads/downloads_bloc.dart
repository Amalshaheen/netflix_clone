import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/downloads/models/model_downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@Injectable()
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        emit(state);
        return;
      }
      emit(
        state.copyWith(
            isLoading: true, downloadsSuccesOrFailure: none(), downloads: []),
      );

      final Either<MainFailure, List<DownloadsModel>> downloadsOption =
          await downloadsRepo.getDownloadsImages();
      // log(downloadsOption.toString());
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsSuccesOrFailure: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadsSuccesOrFailure: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}

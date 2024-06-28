import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/model_downloads.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<DownloadsModel>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);

      // log(response.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<DownloadsModel> downloadList =
            (response.data['results'] as List).map((e) {
          return DownloadsModel.fromJson(e);
        }).toList();

        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}

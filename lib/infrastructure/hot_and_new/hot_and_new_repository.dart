import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/hot_and_new/i_hot_and_new_repo.dart';
import 'package:netflix/domain/hot_and_new/models/hot_and_new_model.dart';

@LazySingleton(as: IHotAndNewRepo)
class HotAndNewRepository implements IHotAndNewRepo {
  @override
  Future<Either<MainFailure, HotAndNewModel>> getComingSoon() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.comingSoon);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final HotAndNewModel comingSoonMovieList =
            HotAndNewModel.fromJson(response.data);
      
        return Right(comingSoonMovieList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNewModel>> getEveryonesWatching()  async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.everyonesWatching);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final HotAndNewModel everyonesWatchingList =
            HotAndNewModel.fromJson(response.data);
      
        return Right(everyonesWatchingList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}

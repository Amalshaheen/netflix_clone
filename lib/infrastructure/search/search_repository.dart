import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/search/i_search_repo.dart';
import 'package:netflix/domain/search/models/model_search.dart';
import 'package:netflix/domain/search/models/model_top_search.dart';

@LazySingleton(as: ISearchRepo)
class SearchRepository implements ISearchRepo {
  @override
  Future<Either<MainFailure, List<TopSearchModel>>> getTopSearch() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.topSearch);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<TopSearchModel> topSearch =
            (response.data['results'] as List)
                .map((e) => TopSearchModel.fromJson(e))
                .toList();
        return Right(topSearch);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<SearchModel>>> searchMovie(
      String query) async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.searchQuery,
          queryParameters: {'query': query, 'include_adult': 'false'});

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<SearchModel> search = (response.data['results'] as List)
            .map((e) => SearchModel.fromJson(e))
            .toList();

        return Right(search);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}

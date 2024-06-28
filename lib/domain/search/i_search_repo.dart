import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/search/models/model_search.dart';
import 'package:netflix/domain/search/models/model_top_search.dart';

abstract class ISearchRepo {
  Future<Either<MainFailure, List<SearchModel>>> searchMovie(String query);
  Future<Either<MainFailure, List<TopSearchModel>>> getTopSearch();
}

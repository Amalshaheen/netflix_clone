import 'package:dartz/dartz.dart';
import 'package:netflix/domain/hot_and_new/models/hot_and_new_model.dart';

import '../core/failures/main_failure.dart';

abstract class IHotAndNewRepo {
  Future<Either<MainFailure, HotAndNewModel>> getComingSoon();
  Future<Either<MainFailure, HotAndNewModel>> getEveryonesWatching();
}

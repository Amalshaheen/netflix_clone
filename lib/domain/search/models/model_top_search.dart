// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_top_search.g.dart';
part 'model_top_search.freezed.dart';

@freezed
class TopSearchModel with _$TopSearchModel {
  const factory TopSearchModel({
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'original_name') required String? originalName,
  }) = _TopSearchModel;

  factory TopSearchModel.fromJson(Map<String, dynamic> json) =>
      _$TopSearchModelFromJson(json);
}

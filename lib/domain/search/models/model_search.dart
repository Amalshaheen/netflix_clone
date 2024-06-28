import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_search.freezed.dart';
part 'model_search.g.dart';

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel(
          {@JsonKey(name: 'poster_path') required String? posterPath}) =
      _SearchModel;
  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}

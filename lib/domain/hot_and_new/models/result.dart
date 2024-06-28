import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'title')
  String? title;
  String? overview;
  @JsonKey(name: 'release_date')
  String? releaseDate;

  Result({
    this.backdropPath,
   
    this.overview,
    this.releaseDate,
    this.title,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

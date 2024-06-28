// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      backdropPath: json['backdrop_path'] as String?,
      overview: json['overview'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
    };

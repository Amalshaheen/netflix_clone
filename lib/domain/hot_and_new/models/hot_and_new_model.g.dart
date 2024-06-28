// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_and_new_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotAndNewModel _$HotAndNewModelFromJson(Map<String, dynamic> json) =>
    HotAndNewModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HotAndNewModelToJson(HotAndNewModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

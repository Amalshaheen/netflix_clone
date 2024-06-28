import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'hot_and_new_model.g.dart';

@JsonSerializable()
class HotAndNewModel {
  List<Result>? results;

  HotAndNewModel({this.results});

  factory HotAndNewModel.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewModelToJson(this);
}

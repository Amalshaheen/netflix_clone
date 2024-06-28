// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_top_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopSearchModel _$TopSearchModelFromJson(Map<String, dynamic> json) {
  return _TopSearchModel.fromJson(json);
}

/// @nodoc
mixin _$TopSearchModel {
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSearchModelCopyWith<TopSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSearchModelCopyWith<$Res> {
  factory $TopSearchModelCopyWith(
          TopSearchModel value, $Res Function(TopSearchModel) then) =
      _$TopSearchModelCopyWithImpl<$Res, TopSearchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'original_name') String? originalName});
}

/// @nodoc
class _$TopSearchModelCopyWithImpl<$Res, $Val extends TopSearchModel>
    implements $TopSearchModelCopyWith<$Res> {
  _$TopSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopSearchModelImplCopyWith<$Res>
    implements $TopSearchModelCopyWith<$Res> {
  factory _$$TopSearchModelImplCopyWith(_$TopSearchModelImpl value,
          $Res Function(_$TopSearchModelImpl) then) =
      __$$TopSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'original_name') String? originalName});
}

/// @nodoc
class __$$TopSearchModelImplCopyWithImpl<$Res>
    extends _$TopSearchModelCopyWithImpl<$Res, _$TopSearchModelImpl>
    implements _$$TopSearchModelImplCopyWith<$Res> {
  __$$TopSearchModelImplCopyWithImpl(
      _$TopSearchModelImpl _value, $Res Function(_$TopSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
  }) {
    return _then(_$TopSearchModelImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopSearchModelImpl implements _TopSearchModel {
  const _$TopSearchModelImpl(
      {@JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'original_name') required this.originalName});

  factory _$TopSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopSearchModelImplFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'original_name')
  final String? originalName;

  @override
  String toString() {
    return 'TopSearchModel(backdropPath: $backdropPath, title: $title, name: $name, originalName: $originalName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopSearchModelImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, backdropPath, title, name, originalName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopSearchModelImplCopyWith<_$TopSearchModelImpl> get copyWith =>
      __$$TopSearchModelImplCopyWithImpl<_$TopSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopSearchModelImplToJson(
      this,
    );
  }
}

abstract class _TopSearchModel implements TopSearchModel {
  const factory _TopSearchModel(
      {@JsonKey(name: 'backdrop_path') required final String? backdropPath,
      @JsonKey(name: 'title') required final String? title,
      @JsonKey(name: 'name') required final String? name,
      @JsonKey(name: 'original_name')
      required final String? originalName}) = _$TopSearchModelImpl;

  factory _TopSearchModel.fromJson(Map<String, dynamic> json) =
      _$TopSearchModelImpl.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'original_name')
  String? get originalName;
  @override
  @JsonKey(ignore: true)
  _$$TopSearchModelImplCopyWith<_$TopSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

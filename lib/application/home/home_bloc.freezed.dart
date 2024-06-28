// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'HomeEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements HomeEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
mixin _$HomeState {
  List<DownloadsModel> get releasedInThePastYearList =>
      throw _privateConstructorUsedError;
  List<DownloadsModel> get trendingNowList =>
      throw _privateConstructorUsedError;
  List<DownloadsModel> get top10TVShowsInIndiaTodayList =>
      throw _privateConstructorUsedError;
  List<DownloadsModel> get tenseDramaList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<DownloadsModel> releasedInThePastYearList,
      List<DownloadsModel> trendingNowList,
      List<DownloadsModel> top10TVShowsInIndiaTodayList,
      List<DownloadsModel> tenseDramaList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releasedInThePastYearList = null,
    Object? trendingNowList = null,
    Object? top10TVShowsInIndiaTodayList = null,
    Object? tenseDramaList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      releasedInThePastYearList: null == releasedInThePastYearList
          ? _value.releasedInThePastYearList
          : releasedInThePastYearList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      trendingNowList: null == trendingNowList
          ? _value.trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      top10TVShowsInIndiaTodayList: null == top10TVShowsInIndiaTodayList
          ? _value.top10TVShowsInIndiaTodayList
          : top10TVShowsInIndiaTodayList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      tenseDramaList: null == tenseDramaList
          ? _value.tenseDramaList
          : tenseDramaList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DownloadsModel> releasedInThePastYearList,
      List<DownloadsModel> trendingNowList,
      List<DownloadsModel> top10TVShowsInIndiaTodayList,
      List<DownloadsModel> tenseDramaList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releasedInThePastYearList = null,
    Object? trendingNowList = null,
    Object? top10TVShowsInIndiaTodayList = null,
    Object? tenseDramaList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$InitialImpl(
      releasedInThePastYearList: null == releasedInThePastYearList
          ? _value._releasedInThePastYearList
          : releasedInThePastYearList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      trendingNowList: null == trendingNowList
          ? _value._trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      top10TVShowsInIndiaTodayList: null == top10TVShowsInIndiaTodayList
          ? _value._top10TVShowsInIndiaTodayList
          : top10TVShowsInIndiaTodayList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      tenseDramaList: null == tenseDramaList
          ? _value._tenseDramaList
          : tenseDramaList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<DownloadsModel> releasedInThePastYearList,
      required final List<DownloadsModel> trendingNowList,
      required final List<DownloadsModel> top10TVShowsInIndiaTodayList,
      required final List<DownloadsModel> tenseDramaList,
      required this.isLoading,
      required this.isError})
      : _releasedInThePastYearList = releasedInThePastYearList,
        _trendingNowList = trendingNowList,
        _top10TVShowsInIndiaTodayList = top10TVShowsInIndiaTodayList,
        _tenseDramaList = tenseDramaList;

  final List<DownloadsModel> _releasedInThePastYearList;
  @override
  List<DownloadsModel> get releasedInThePastYearList {
    if (_releasedInThePastYearList is EqualUnmodifiableListView)
      return _releasedInThePastYearList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releasedInThePastYearList);
  }

  final List<DownloadsModel> _trendingNowList;
  @override
  List<DownloadsModel> get trendingNowList {
    if (_trendingNowList is EqualUnmodifiableListView) return _trendingNowList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNowList);
  }

  final List<DownloadsModel> _top10TVShowsInIndiaTodayList;
  @override
  List<DownloadsModel> get top10TVShowsInIndiaTodayList {
    if (_top10TVShowsInIndiaTodayList is EqualUnmodifiableListView)
      return _top10TVShowsInIndiaTodayList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10TVShowsInIndiaTodayList);
  }

  final List<DownloadsModel> _tenseDramaList;
  @override
  List<DownloadsModel> get tenseDramaList {
    if (_tenseDramaList is EqualUnmodifiableListView) return _tenseDramaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramaList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(releasedInThePastYearList: $releasedInThePastYearList, trendingNowList: $trendingNowList, top10TVShowsInIndiaTodayList: $top10TVShowsInIndiaTodayList, tenseDramaList: $tenseDramaList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(
                other._releasedInThePastYearList, _releasedInThePastYearList) &&
            const DeepCollectionEquality()
                .equals(other._trendingNowList, _trendingNowList) &&
            const DeepCollectionEquality().equals(
                other._top10TVShowsInIndiaTodayList,
                _top10TVShowsInIndiaTodayList) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramaList, _tenseDramaList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_releasedInThePastYearList),
      const DeepCollectionEquality().hash(_trendingNowList),
      const DeepCollectionEquality().hash(_top10TVShowsInIndiaTodayList),
      const DeepCollectionEquality().hash(_tenseDramaList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final List<DownloadsModel> releasedInThePastYearList,
      required final List<DownloadsModel> trendingNowList,
      required final List<DownloadsModel> top10TVShowsInIndiaTodayList,
      required final List<DownloadsModel> tenseDramaList,
      required final bool isLoading,
      required final bool isError}) = _$InitialImpl;

  @override
  List<DownloadsModel> get releasedInThePastYearList;
  @override
  List<DownloadsModel> get trendingNowList;
  @override
  List<DownloadsModel> get top10TVShowsInIndiaTodayList;
  @override
  List<DownloadsModel> get tenseDramaList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

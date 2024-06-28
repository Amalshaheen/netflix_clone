// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String movieName) clickedLOL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String movieName)? clickedLOL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieName)? clickedLOL,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ClickedLOL value) clickedLOL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ClickedLOL value)? clickedLOL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ClickedLOL value)? clickedLOL,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
          FastLaughEvent value, $Res Function(FastLaughEvent) then) =
      _$FastLaughEventCopyWithImpl<$Res, FastLaughEvent>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res, $Val extends FastLaughEvent>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

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
    extends _$FastLaughEventCopyWithImpl<$Res, _$InitializeImpl>
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
    return 'FastLaughEvent.initialize()';
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
    required TResult Function(String movieName) clickedLOL,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String movieName)? clickedLOL,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieName)? clickedLOL,
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
    required TResult Function(ClickedLOL value) clickedLOL,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ClickedLOL value)? clickedLOL,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ClickedLOL value)? clickedLOL,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements FastLaughEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$ClickedLOLImplCopyWith<$Res> {
  factory _$$ClickedLOLImplCopyWith(
          _$ClickedLOLImpl value, $Res Function(_$ClickedLOLImpl) then) =
      __$$ClickedLOLImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieName});
}

/// @nodoc
class __$$ClickedLOLImplCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$ClickedLOLImpl>
    implements _$$ClickedLOLImplCopyWith<$Res> {
  __$$ClickedLOLImplCopyWithImpl(
      _$ClickedLOLImpl _value, $Res Function(_$ClickedLOLImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieName = null,
  }) {
    return _then(_$ClickedLOLImpl(
      movieName: null == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClickedLOLImpl implements ClickedLOL {
  const _$ClickedLOLImpl({required this.movieName});

  @override
  final String movieName;

  @override
  String toString() {
    return 'FastLaughEvent.clickedLOL(movieName: $movieName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickedLOLImpl &&
            (identical(other.movieName, movieName) ||
                other.movieName == movieName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickedLOLImplCopyWith<_$ClickedLOLImpl> get copyWith =>
      __$$ClickedLOLImplCopyWithImpl<_$ClickedLOLImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String movieName) clickedLOL,
  }) {
    return clickedLOL(movieName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String movieName)? clickedLOL,
  }) {
    return clickedLOL?.call(movieName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieName)? clickedLOL,
    required TResult orElse(),
  }) {
    if (clickedLOL != null) {
      return clickedLOL(movieName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(ClickedLOL value) clickedLOL,
  }) {
    return clickedLOL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(ClickedLOL value)? clickedLOL,
  }) {
    return clickedLOL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(ClickedLOL value)? clickedLOL,
    required TResult orElse(),
  }) {
    if (clickedLOL != null) {
      return clickedLOL(this);
    }
    return orElse();
  }
}

abstract class ClickedLOL implements FastLaughEvent {
  const factory ClickedLOL({required final String movieName}) =
      _$ClickedLOLImpl;

  String get movieName;
  @JsonKey(ignore: true)
  _$$ClickedLOLImplCopyWith<_$ClickedLOLImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FastLaughState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<TopSearchModel> get profileList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
          FastLaughState value, $Res Function(FastLaughState) then) =
      _$FastLaughStateCopyWithImpl<$Res, FastLaughState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<TopSearchModel> profileList});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res, $Val extends FastLaughState>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? profileList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      profileList: null == profileList
          ? _value.profileList
          : profileList // ignore: cast_nullable_to_non_nullable
              as List<TopSearchModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FastLaughStateImplCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$$FastLaughStateImplCopyWith(_$FastLaughStateImpl value,
          $Res Function(_$FastLaughStateImpl) then) =
      __$$FastLaughStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<TopSearchModel> profileList});
}

/// @nodoc
class __$$FastLaughStateImplCopyWithImpl<$Res>
    extends _$FastLaughStateCopyWithImpl<$Res, _$FastLaughStateImpl>
    implements _$$FastLaughStateImplCopyWith<$Res> {
  __$$FastLaughStateImplCopyWithImpl(
      _$FastLaughStateImpl _value, $Res Function(_$FastLaughStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? profileList = null,
  }) {
    return _then(_$FastLaughStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      profileList: null == profileList
          ? _value._profileList
          : profileList // ignore: cast_nullable_to_non_nullable
              as List<TopSearchModel>,
    ));
  }
}

/// @nodoc

class _$FastLaughStateImpl implements _FastLaughState {
  const _$FastLaughStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<TopSearchModel> profileList})
      : _profileList = profileList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<TopSearchModel> _profileList;
  @override
  List<TopSearchModel> get profileList {
    if (_profileList is EqualUnmodifiableListView) return _profileList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profileList);
  }

  @override
  String toString() {
    return 'FastLaughState(isLoading: $isLoading, isError: $isError, profileList: $profileList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FastLaughStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._profileList, _profileList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_profileList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FastLaughStateImplCopyWith<_$FastLaughStateImpl> get copyWith =>
      __$$FastLaughStateImplCopyWithImpl<_$FastLaughStateImpl>(
          this, _$identity);
}

abstract class _FastLaughState implements FastLaughState {
  const factory _FastLaughState(
      {required final bool isLoading,
      required final bool isError,
      required final List<TopSearchModel> profileList}) = _$FastLaughStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<TopSearchModel> get profileList;
  @override
  @JsonKey(ignore: true)
  _$$FastLaughStateImplCopyWith<_$FastLaughStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

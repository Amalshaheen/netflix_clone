// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSearch,
    required TResult Function(String query) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSearch,
    TResult? Function(String query)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSearch,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopSearch value) getTopSearch,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopSearch value)? getTopSearch,
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopSearch value)? getTopSearch,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTopSearchImplCopyWith<$Res> {
  factory _$$GetTopSearchImplCopyWith(
          _$GetTopSearchImpl value, $Res Function(_$GetTopSearchImpl) then) =
      __$$GetTopSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTopSearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetTopSearchImpl>
    implements _$$GetTopSearchImplCopyWith<$Res> {
  __$$GetTopSearchImplCopyWithImpl(
      _$GetTopSearchImpl _value, $Res Function(_$GetTopSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTopSearchImpl implements _GetTopSearch {
  const _$GetTopSearchImpl();

  @override
  String toString() {
    return 'SearchEvent.getTopSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTopSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSearch,
    required TResult Function(String query) search,
  }) {
    return getTopSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSearch,
    TResult? Function(String query)? search,
  }) {
    return getTopSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSearch,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (getTopSearch != null) {
      return getTopSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopSearch value) getTopSearch,
    required TResult Function(_Search value) search,
  }) {
    return getTopSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopSearch value)? getTopSearch,
    TResult? Function(_Search value)? search,
  }) {
    return getTopSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopSearch value)? getTopSearch,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (getTopSearch != null) {
      return getTopSearch(this);
    }
    return orElse();
  }
}

abstract class _GetTopSearch implements SearchEvent {
  const factory _GetTopSearch() = _$GetTopSearchImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSearch,
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSearch,
    TResult? Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSearch,
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopSearch value) getTopSearch,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopSearch value)? getTopSearch,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopSearch value)? getTopSearch,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search(final String query) = _$SearchImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SearchModel> get searchResult => throw _privateConstructorUsedError;
  List<TopSearchModel> get topSearch => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<SearchModel> searchResult,
      List<TopSearchModel> topSearch,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? topSearch = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
      topSearch: null == topSearch
          ? _value.topSearch
          : topSearch // ignore: cast_nullable_to_non_nullable
              as List<TopSearchModel>,
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
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchModel> searchResult,
      List<TopSearchModel> topSearch,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
    Object? topSearch = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$SearchStateImpl(
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
      topSearch: null == topSearch
          ? _value._topSearch
          : topSearch // ignore: cast_nullable_to_non_nullable
              as List<TopSearchModel>,
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

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required final List<SearchModel> searchResult,
      required final List<TopSearchModel> topSearch,
      required this.isLoading,
      required this.isError})
      : _searchResult = searchResult,
        _topSearch = topSearch;

  final List<SearchModel> _searchResult;
  @override
  List<SearchModel> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  final List<TopSearchModel> _topSearch;
  @override
  List<TopSearchModel> get topSearch {
    if (_topSearch is EqualUnmodifiableListView) return _topSearch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSearch);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SearchState(searchResult: $searchResult, topSearch: $topSearch, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult) &&
            const DeepCollectionEquality()
                .equals(other._topSearch, _topSearch) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResult),
      const DeepCollectionEquality().hash(_topSearch),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SearchModel> searchResult,
      required final List<TopSearchModel> topSearch,
      required final bool isLoading,
      required final bool isError}) = _$SearchStateImpl;

  @override
  List<SearchModel> get searchResult;
  @override
  List<TopSearchModel> get topSearch;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

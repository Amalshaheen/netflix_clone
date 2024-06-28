// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix/application/downloads/downloads_bloc.dart' as _i9;
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart' as _i13;
import 'package:netflix/application/home/home_bloc.dart' as _i11;
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart' as _i12;
import 'package:netflix/application/search/search_bloc.dart' as _i10;
import 'package:netflix/domain/downloads/i_downloads_repo.dart' as _i7;
import 'package:netflix/domain/hot_and_new/i_hot_and_new_repo.dart' as _i3;
import 'package:netflix/domain/search/i_search_repo.dart' as _i5;
import 'package:netflix/infrastructure/downloads/downloads_repository.dart'
    as _i8;
import 'package:netflix/infrastructure/hot_and_new/hot_and_new_repository.dart'
    as _i4;
import 'package:netflix/infrastructure/search/search_repository.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IHotAndNewRepo>(() => _i4.HotAndNewRepository());
    gh.lazySingleton<_i5.ISearchRepo>(() => _i6.SearchRepository());
    gh.lazySingleton<_i7.IDownloadsRepo>(() => _i8.DownloadsRepository());
    gh.factory<_i9.DownloadsBloc>(
        () => _i9.DownloadsBloc(gh<_i7.IDownloadsRepo>()));
    gh.factory<_i10.SearchBloc>(() => _i10.SearchBloc(gh<_i5.ISearchRepo>()));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i7.IDownloadsRepo>()));
    gh.factory<_i12.HotAndNewBloc>(
        () => _i12.HotAndNewBloc(gh<_i3.IHotAndNewRepo>()));
    gh.factory<_i13.FastLaughBloc>(
        () => _i13.FastLaughBloc(gh<_i5.ISearchRepo>()));
    return this;
  }
}

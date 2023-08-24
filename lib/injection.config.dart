// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'config/config.dart' as _i4;
import 'pages/home/home_view_model.dart' as _i5;
import 'pages/trip/new/new_trip_view_model.dart' as _i6;
import 'pages/trip/trip_view_model.dart' as _i8;
import 'router.dart' as _i9;
import 'services/auth_service.dart' as _i3;
import 'stores/trip_store.dart' as _i7;

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
    gh.singleton<_i3.AuthService>(_i3.AuthService());
    gh.singleton<_i4.Config>(_i4.Config());
    gh.factory<_i5.HomeViewModel>(
        () => _i5.HomeViewModel(authService: gh<_i3.AuthService>()));
    gh.factory<_i6.NewTripViewModel>(() => _i6.NewTripViewModel());
    gh.singleton<_i7.TripStore>(_i7.TripStore());
    gh.factory<_i8.TripViewModel>(() => _i8.TripViewModel());
    gh.singleton<_i9.AppRouter>(
        _i9.AppRouter(authService: gh<_i3.AuthService>()));
    return this;
  }
}

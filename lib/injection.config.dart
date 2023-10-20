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
import 'pages/home/home_view_model.dart' as _i12;
import 'pages/trip/locations/locations_view_model.dart' as _i13;
import 'pages/trip/new/new_trip_view_model.dart' as _i14;
import 'pages/trip/trip_view_model.dart' as _i10;
import 'router.dart' as _i11;
import 'services/auth_service.dart' as _i3;
import 'services/crash_report_service.dart' as _i5;
import 'services/firestore_service.dart' as _i6;
import 'services/trapa_api_service.dart' as _i8;
import 'stores/location_store.dart' as _i7;
import 'stores/trip_store.dart' as _i9;

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
    gh.singleton<_i5.CrashReportService>(_i5.CrashReportService());
    gh.factory<_i6.FirestoreService>(() => _i6.FirestoreService());
    gh.factory<_i7.LocationStore>(
        () => _i7.LocationStore(firestoreService: gh<_i6.FirestoreService>()));
    gh.factory<_i8.TrapaApiService>(() => _i8.TrapaApiService(
          config: gh<_i4.Config>(),
          authService: gh<_i3.AuthService>(),
        ));
    gh.singleton<_i9.TripStore>(_i9.TripStore(
      apiService: gh<_i8.TrapaApiService>(),
      crashReporter: gh<_i5.CrashReportService>(),
      firestoreService: gh<_i6.FirestoreService>(),
      authService: gh<_i3.AuthService>(),
    ));
    gh.factory<_i10.TripViewModel>(
        () => _i10.TripViewModel(tripStore: gh<_i9.TripStore>()));
    gh.singleton<_i11.AppRouter>(
        _i11.AppRouter(authService: gh<_i3.AuthService>()));
    gh.factory<_i12.HomeViewModel>(
        () => _i12.HomeViewModel(tripStore: gh<_i9.TripStore>()));
    gh.factory<_i13.LocationsViewModel>(() => _i13.LocationsViewModel(
          locationStore: gh<_i7.LocationStore>(),
          tripStore: gh<_i9.TripStore>(),
          apiService: gh<_i8.TrapaApiService>(),
          crashReporter: gh<_i5.CrashReportService>(),
        ));
    gh.factory<_i14.NewTripViewModel>(
        () => _i14.NewTripViewModel(tripStore: gh<_i9.TripStore>()));
    return this;
  }
}

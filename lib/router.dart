import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'pages/home/home_page.dart';
import 'pages/home/home_view_model.dart';
import 'pages/login/login_page.dart';
import 'pages/trip/new/new_trip_page.dart';
import 'pages/trip/new/new_trip_view_model.dart';
import 'pages/trip/trip_page.dart';
import 'pages/trip/trip_view_model.dart';
import 'services/auth_service.dart';

@singleton
class AppRouter {
  AppRouter({
    required this.authService,
  });

  final AuthService authService;

  void goToHome(BuildContext context) {
    context.go('/');
  }

  void goToNewTrip(BuildContext context) {
    context.go('/trips/new');
  }

  late final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: TrapaPageBuilder(
          pageDefinition: TrapaPageDefinition(
            viewModelBuilder: (_) => getIt<HomeViewModel>(),
            pageBuilder: (vm) => HomePage(vm: vm),
          ),
        ),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/trips',
        builder: (context, state) => HomePage(vm: getIt<HomeViewModel>()),
        routes: [
          GoRoute(
            path: 'new',
            pageBuilder: TrapaPageBuilder(
              pageDefinition: TrapaPageDefinition(
                viewModelBuilder: (_) => getIt<NewTripViewModel>(),
                pageBuilder: (vm) => NewTripPage(vm: vm),
              ),
            ),
          ),
          GoRoute(
            path: ':id',
            pageBuilder: TrapaPageBuilder(
              pageDefinition: TrapaPageDefinition(
                viewModelBuilder: (state) {
                  final vm = getIt<TripViewModel>();
                  vm.setTripId(state.pathParameters['id']!);
                  return vm;
                },
                onStateChanged: (vm, state) {
                  vm.setTripId(state.pathParameters['id']!);
                  return vm;
                },
                pageBuilder: (vm) => TripPage(vm: vm),
              ),
            ),
          ),
        ],
      )
    ],
    redirect: (BuildContext context, GoRouterState state) {
      if (authService.user.value == null) {
        return '/login';
      } else {
        return null;
      }
    },
  );
}

/// Builds a [Page] with transition animations suitable for the current platform:
/// - Android: [MaterialPage] using the default Material transition animations
/// - Web: [NoTransitionPage] with no transition animations
class TrapaPageBuilder<T> {
  TrapaPageBuilder({
    required this.pageDefinition,
  });

  final TrapaPageDefinition<T> pageDefinition;

  Page<dynamic> call(BuildContext context, GoRouterState state) {
    if (kIsWeb) {
      return NoTransitionPage(
        key: state.pageKey,
        child: TrapaPageViewModelContainer(
          pageDefinition: pageDefinition,
          state: state,
        ),
      );
    } else {
      return MaterialPage(
        key: state.pageKey,
        child: TrapaPageViewModelContainer(
          pageDefinition: pageDefinition,
          state: state,
        ),
      );
    }
  }
}

/// This stateful widget provides a container that preserves the view model across rebuilds of the
/// page, e.g. after device rotation.
class TrapaPageViewModelContainer<T> extends StatefulWidget {
  const TrapaPageViewModelContainer({
    required this.pageDefinition,
    required this.state,
    super.key,
  });

  final TrapaPageDefinition<T> pageDefinition;
  final GoRouterState state;

  @override
  State<TrapaPageViewModelContainer<T>> createState() => _TrapaPageViewModelContainerState<T>();
}

class _TrapaPageViewModelContainerState<T> extends State<TrapaPageViewModelContainer<T>> {
  late T viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = widget.pageDefinition.viewModelBuilder(widget.state);
  }

  @override
  void didUpdateWidget(covariant TrapaPageViewModelContainer<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state != widget.state && widget.pageDefinition.onStateChanged != null) {
      viewModel = widget.pageDefinition.onStateChanged!(viewModel, widget.state);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.pageDefinition.pageBuilder(viewModel);
  }
}

/// Definition for a page that has a viewmodel which can react to changes in the go router state
class TrapaPageDefinition<T> {
  const TrapaPageDefinition({
    required this.viewModelBuilder,
    required this.pageBuilder,
    this.onStateChanged,
  });

  /// Builder function that should return a new instance of the viewmodel for this page. Called
  /// when this page is first opened. If the route parameters change then the [onStateChanged]
  /// method is called to update or replace the viewmodel.
  final T Function(GoRouterState initialState) viewModelBuilder;

  /// Optional function that can modify or replace the viewmodel when the route state changes.
  /// Return the same viewmodel instance to maintain the current state, or return a new instance.
  final T Function(T viewModel, GoRouterState updatedState)? onStateChanged;

  /// Builder function that should return a new instance of the page widget using the view model
  final Widget Function(T viewModel) pageBuilder;
}

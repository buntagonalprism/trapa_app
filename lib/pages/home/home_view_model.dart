import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../services/auth_service.dart';

part 'home_view_model.g.dart';

@injectable
class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel with Store {
  _HomeViewModel({
    required AuthService authService,
  }) : _authService = authService;

  final AuthService _authService;

  @computed
  String get userEmail => _authService.user?.email ?? '';
}

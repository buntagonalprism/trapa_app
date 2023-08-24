import 'package:flutter/material.dart';

import '../injection.dart';
import '../services/auth_service.dart';

class SettingsIcon extends StatelessWidget {
  SettingsIcon({super.key});

  final AuthService _auth = getIt<AuthService>();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_SettingsMenu>(
      icon: const Icon(Icons.settings),
      onSelected: _onSelected,
      itemBuilder: _buildMenu,
    );
  }

  void _onSelected(_SettingsMenu menu) {
    switch (menu) {
      case _SettingsMenu.profile:
        break;
      case _SettingsMenu.settings:
        break;
      case _SettingsMenu.logout:
        _auth.signOut();
        break;
    }
  }

  List<PopupMenuEntry<_SettingsMenu>> _buildMenu(BuildContext context) {
    return [
      const PopupMenuItem(
        value: _SettingsMenu.profile,
        child: Text('Profile'),
      ),
      const PopupMenuItem(
        value: _SettingsMenu.logout,
        child: Text('Logout'),
      ),
    ];
  }
}

enum _SettingsMenu {
  profile,
  settings,
  logout,
}

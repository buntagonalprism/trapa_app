import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../injection.dart';
import '../services/auth_service.dart';

class SettingsIcon extends StatelessWidget {
  SettingsIcon({super.key});

  final AuthService _auth = getIt<AuthService>();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_SettingsMenu>(
      icon: const Icon(Icons.settings),
      onSelected: (_SettingsMenu menuItem) => _onSelected(menuItem, context),
      itemBuilder: _buildMenu,
    );
  }

  void _onSelected(_SettingsMenu menu, BuildContext context) {
    switch (menu) {
      case _SettingsMenu.profile:
        break;
      case _SettingsMenu.settings:
        break;
      case _SettingsMenu.logout:
        _auth.signOut();
        break;
      case _SettingsMenu.copyAuthToken:
        _copyAuthTokenToClipboard();
        break;
      case _SettingsMenu.about:
        _showAboutDialog(context);
        break;
    }
  }

  void _showAboutDialog(BuildContext context) async {
    final packageInfo = await PackageInfo.fromPlatform();
    if (context.mounted) {
      showAboutDialog(
        context: context,
        applicationName: 'Trapa',
        applicationVersion: packageInfo.version,
      );
    }
  }

  void _copyAuthTokenToClipboard() async {
    final authToken = await _auth.getAuthToken();
    if (authToken != null) {
      await Clipboard.setData(ClipboardData(text: authToken));
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
      const PopupMenuItem(
        value: _SettingsMenu.about,
        child: Text('About'),
      ),
      if (kDebugMode)
        const PopupMenuItem(
          value: _SettingsMenu.copyAuthToken,
          child: Text('Copy Auth Token'),
        )
    ];
  }
}

enum _SettingsMenu {
  profile,
  settings,
  logout,
  copyAuthToken,
  about,
}

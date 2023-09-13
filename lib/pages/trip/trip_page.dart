import 'package:flutter/material.dart';

import '../../messages.dart';
import '../../widgets/home_icon.dart';
import '../../widgets/settings_icon.dart';
import 'trip_view_model.dart';

class TripPage extends StatelessWidget {
  const TripPage({
    required this.vm,
    super.key,
  });

  final TripViewModel vm;

  @override
  Widget build(BuildContext context) {
    final messages = Messages.of(context)!;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const HomeIcon(),
            const SizedBox(width: 8),
            const Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 12),
            Text(
              messages.newTripTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          SettingsIcon(),
        ],
      ),
      body: Center(
        child: Text(vm.tripId),
      ),
    );
  }
}

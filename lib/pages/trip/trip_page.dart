import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../messages.dart';
import '../../models/api/network_observable.dart';
import '../../models/trip/trip.dart';
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
            Observer(builder: (context) {
              final trip = vm.tripObservable.valueOrNull();
              return Text(
                trip?.name ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              );
            }),
          ],
        ),
        actions: [
          SettingsIcon(),
        ],
      ),
      body: Center(
        child: Observer(builder: (context) {
          return vm.tripObservable.value.when(
            data: (trip, _) => TripView(trip: trip),
            unknownError: () => const Text('Unknown error'),
            loading: () => const CircularProgressIndicator(),
            notFound: () => Text('No trip found with id ${vm.tripId}'),
          );
        }),
      ),
    );
  }
}

class TripView extends StatelessWidget {
  const TripView({required this.trip, super.key});

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

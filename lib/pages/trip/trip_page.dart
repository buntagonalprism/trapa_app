import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../messages.dart';
import '../../models/api/network_observable.dart';
import '../../models/trip/trip.dart';
import '../../widgets/home_icon.dart';
import '../../widgets/settings_icon.dart';
import 'budget/budget_view.dart';
import 'guidebook/guidebook_view.dart';
import 'itinerary/itinerary_view.dart';
import 'locations/locations_view.dart';
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

class TripView extends StatefulWidget {
  const TripView({required this.trip, super.key});

  final Trip trip;

  @override
  State<TripView> createState() => _TripViewState();
}

class _TripViewState extends State<TripView> {
  int _selectedIndex = 0;

  final _children = [
    const ItineraryView(),
    const GuidebookView(),
    const LocationsView(),
    const BudgetView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) => setState(() => _selectedIndex = index),
          labelType: NavigationRailLabelType.all,
          destinations: const <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(Icons.calendar_month),
              label: Text('Itinerary'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.book),
              label: Text('Guidebook'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.map),
              label: Text('Locations'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.attach_money),
              label: Text('Budget'),
            ),
          ],
        ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: _children[_selectedIndex],
        ),
      ],
    );
  }
}

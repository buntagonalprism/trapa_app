import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../injection.dart';
import '../../messages.dart';
import '../../models/trip/trip.dart';
import '../../router.dart';
import '../../widgets/settings_icon.dart';
import 'home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.vm,
    super.key,
  });

  final HomeViewModel vm;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final messages = Messages.of(context)!;

    return Scaffold(
      appBar: AppBar(
        actions: [
          SettingsIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.travel_explore,
                  size: 48,
                  color: theme.colorScheme.primary,
                ),
                Text(
                  Messages.of(context)!.title,
                  style: GoogleFonts.audiowide(
                    textStyle: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: theme.colorScheme.primary),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 36),
            Text(
              'Travel Research And Planning App',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: theme.colorScheme.primary),
            ),
            const SizedBox(height: 48),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => getIt<AppRouter>().goToNewTrip(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 47, vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.add),
                      const SizedBox(height: 16),
                      Text(messages.homeNewTrip, style: theme.textTheme.headlineSmall),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 48),
            Text('My trips', style: theme.textTheme.headlineMedium),
            Observer(builder: (context) {
              return Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: widget.vm.trips.map((trip) => TripTile(trip: trip)).toList(),
              );
            })
          ],
        ),
      ),
    );
  }
}

class TripTile extends StatelessWidget {
  const TripTile({
    required this.trip,
    super.key,
  });

  final Trip trip;

  static final _dateFormat = DateFormat("EEEE, MMM d, yyyy");

  @override
  Widget build(BuildContext context) {
    final duration = trip.endDate.difference(trip.startDate).inDays;
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => getIt<AppRouter>().goToTrip(context, trip.id),
        child: Container(
          height: 180,
          width: 300,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(trip.name, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 12),
              Text('Departing: ${_dateFormat.format(trip.startDate)}'),
              const SizedBox(height: 12),
              Text('Returning: ${_dateFormat.format(trip.endDate)}'),
              const SizedBox(height: 12),
              Text('Duration: $duration day${duration == 1 ? '' : 's'}'),
            ],
          ),
        ),
      ),
    );
  }
}

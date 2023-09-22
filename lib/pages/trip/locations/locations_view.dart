import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../models/api/network_observable.dart';
import '../../../models/trip/common/country.dart';
import '../trip_view_model.dart';
import 'edit_countries_dialog.dart';

class LocationsView extends StatelessWidget {
  const LocationsView({required this.vm, super.key});

  final TripViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final trip = vm.tripObservable.requireData();
      if (trip.countries?.isNotEmpty ?? false) {
        return LocationEditorView(vm: vm);
      }
      return NoCountriesSelectedView(vm: vm);
    });
  }
}

class NoCountriesSelectedView extends StatelessWidget {
  const NoCountriesSelectedView({
    super.key,
    required this.vm,
  });

  final TripViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Let\'s get started by selecting the countries you plan to visit'),
          const SizedBox(height: 16),
          const Text('You can always change this later'),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () => EditCountriesDialog.show(context, vm),
            child: const Text('Select Countries'),
          ),
        ],
      ),
    );
  }
}

class LocationEditorView extends StatefulWidget {
  const LocationEditorView({required this.vm, super.key});

  final TripViewModel vm;

  @override
  State<LocationEditorView> createState() => _LocationEditorViewState();
}

class _LocationEditorViewState extends State<LocationEditorView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 360,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  const Text('Countries you are visiting:'),
                  const Spacer(),
                  TextButton(
                    onPressed: () => EditCountriesDialog.show(context, widget.vm),
                    child: const Text('Edit'),
                  ),
                ],
              ),
              Expanded(
                child: Observer(builder: (context) {
                  final trip = widget.vm.tripObservable.requireData();
                  return ListView.builder(
                    itemCount: trip.countries!.length,
                    itemBuilder: (context, index) {
                      final country = trip.countries![index];
                      return CountryTile(country: country);
                    },
                  );
                }),
              ),
            ],
          ),
        ),
        const VerticalDivider(),
        const Placeholder(),
      ],
    );
  }
}

class CountryTile extends StatelessWidget {
  const CountryTile({
    required this.country,
    super.key,
  });

  final Country country;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: country.flagIcon(),
      contentPadding: const EdgeInsets.only(left: 16, right: 12),
      title: Text(
        country.name(context),
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}

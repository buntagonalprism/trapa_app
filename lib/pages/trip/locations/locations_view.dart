import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../models/trip/common/country.dart';
import '../../../models/trip/trip.dart';
import '../edit_countries_dialog.dart';
import 'edit_location_dialog.dart';
import 'locations_view_model.dart';

class LocationsView extends StatelessWidget {
  const LocationsView({required this.vm, super.key});

  final LocationsViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return vm.tripObservable.value.when(
        data: (trip, _) {
          if (trip.countries?.isNotEmpty ?? false) {
            return LocationEditorView(trip: trip, vm: vm);
          }
          return NoCountriesSelectedView(trip: trip, vm: vm);
        },
        unknownError: () => const Text('Unknown error'),
        loading: () => const CircularProgressIndicator(),
        notFound: () => Text('No trip found with id ${vm.tripId}'),
      );
    });
  }
}

class NoCountriesSelectedView extends StatelessWidget {
  const NoCountriesSelectedView({
    super.key,
    required this.vm,
    required this.trip,
  });

  final LocationsViewModel vm;
  final Trip trip;

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
            onPressed: () => EditCountriesDialog.show(
              context: context,
              trip: trip,
              onCountriesSelected: vm.setTripCountries,
            ),
            child: const Text('Select Countries'),
          ),
        ],
      ),
    );
  }
}

class LocationEditorView extends StatefulWidget {
  const LocationEditorView({
    required this.trip,
    required this.vm,
    super.key,
  });

  final Trip trip;
  final LocationsViewModel vm;

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
                    onPressed: () => EditCountriesDialog.show(
                      context: context,
                      trip: widget.trip,
                      onCountriesSelected: widget.vm.setTripCountries,
                    ),
                    child: const Text('Edit'),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.trip.countries!.length,
                  itemBuilder: (context, index) {
                    final country = widget.trip.countries![index];
                    return CountryTile(
                      country: country,
                      vm: widget.vm,
                      onSelect: () => onSelectCountry(country),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const VerticalDivider(),
        Expanded(
          child: CountryLocationsView(vm: widget.vm),
        ),
      ],
    );
  }

  void onSelectCountry(Country country) {
    return widget.vm.selectCountry(country);
  }
}

class CountryTile extends StatelessWidget {
  const CountryTile({
    required this.country,
    required this.vm,
    required this.onSelect,
    super.key,
  });

  final Country country;
  final LocationsViewModel vm;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ListTile(
        dense: true,
        selected: vm.selectedCountry == country,
        selectedColor: Theme.of(context).colorScheme.primary,
        leading: country.flagIcon(),
        onTap: () => onSelect(),
        contentPadding: const EdgeInsets.only(left: 16, right: 12),
        title: Text(
          country.name(context),
          style: const TextStyle(fontSize: 14),
        ),
      );
    });
  }
}

class CountryLocationsView extends StatefulWidget {
  const CountryLocationsView({required this.vm, super.key});

  final LocationsViewModel vm;

  @override
  State<CountryLocationsView> createState() => _CountryLocationsViewState();
}

class _CountryLocationsViewState extends State<CountryLocationsView> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final country = widget.vm.selectedCountry;
      if (country == null) {
        return const Center(child: Text('Please select a country to start adding locations'));
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text.rich(
            TextSpan(children: [
              const TextSpan(text: 'Editing locations in '),
              TextSpan(
                text: country.name(context),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ]),
            textAlign: TextAlign.start,
          ),
          FilledButton(
            onPressed: () => AddLocationDialog.show(context: context, vm: widget.vm),
            child: const Text('Add location'),
          ),
          Expanded(
            child: Observer(builder: (context) {
              final locations = widget.vm.locationsInCountry;
              if (locations.isEmpty) {
                return const Center(
                  child: ListTile(
                    title: Text('No locations found'),
                  ),
                );
              }
              return ListView.builder(
                itemCount: locations.length,
                itemBuilder: (context, index) => ListTile(
                  dense: true,
                  title: Text(locations[index].name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => EditLocationDialog.show(
                            context: context, vm: widget.vm, location: locations[index]),
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () => widget.vm.deleteLocation(locations[index]),
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      );
    });
  }
}

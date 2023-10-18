import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../models/trip/common/country.dart';
import '../../../models/trip/trip.dart';
import '../edit_countries_dialog.dart';
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
                    return CountryTile(country: country, vm: widget.vm);
                  },
                ),
              ),
            ],
          ),
        ),
        const VerticalDivider(),
        Expanded(
          child: CountryRegionsView(vm: widget.vm),
        ),
      ],
    );
  }
}

class CountryTile extends StatelessWidget {
  const CountryTile({
    required this.country,
    required this.vm,
    super.key,
  });

  final Country country;
  final LocationsViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ListTile(
        dense: true,
        selected: vm.selectedCountry == country,
        selectedColor: Theme.of(context).colorScheme.primary,
        leading: country.flagIcon(),
        onTap: () => vm.selectCountry(country),
        contentPadding: const EdgeInsets.only(left: 16, right: 12),
        title: Text(
          country.name(context),
          style: const TextStyle(fontSize: 14),
        ),
      );
    });
  }
}

class CountryRegionsView extends StatefulWidget {
  const CountryRegionsView({required this.vm, super.key});

  final LocationsViewModel vm;

  @override
  State<CountryRegionsView> createState() => _CountryRegionsViewState();
}

class _CountryRegionsViewState extends State<CountryRegionsView> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final country = widget.vm.selectedCountry;
      if (country == null) {
        return const Center(child: Text('Please select a country to start adding regions'));
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
          TextField(
            decoration: const InputDecoration(
              hintText: 'Start typing a new location...',
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (value) => widget.vm.setLocationSearchQuery(value),
          ),
          Expanded(
            child: Observer(builder: (context) {
              return widget.vm.searchResults.when(
                pending: () => const SizedBox(),
                inProgress: () => const Center(child: CircularProgressIndicator()),
                result: (result) => result.when(
                  error: (error) => Center(
                    child: ListTile(
                      title: Text(error.titleText(context)),
                      subtitle: Text(error.bodyText(context)),
                    ),
                  ),
                  success: (suggestions) => ListView.builder(
                    itemCount: suggestions.length,
                    itemBuilder: (context, index) => ListTile(
                      dense: true,
                      title: Text(suggestions[index].name),
                      onTap: () => print('Selected region ${suggestions[index].name}'),
                    ),
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

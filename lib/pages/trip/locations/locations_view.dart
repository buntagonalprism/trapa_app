import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

import '../../../models/trip/common/coordinates.dart';
import '../../../models/trip/common/country.dart';
import '../../../models/trip/locations/location.dart';
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
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  GoogleMapController? _controller;
  late final ReactionDisposer countryReactionDisposer;

  @override
  void initState() {
    super.initState();
    countryReactionDisposer = autorun((_) {
      final country = widget.vm.selectedCountry;
      if (country != null) {
        _animateToCountry(country);
      }
    });
  }

  void _animateToCountry(Country country) {
    _controller?.animateCamera(CameraUpdate.newLatLngBounds(
      country.boundingBox.toLatLngBounds(),
      10,
    ));
  }

  @override
  void dispose() {
    countryReactionDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Observer(builder: (context) {
            final country = widget.vm.selectedCountry;
            if (country == null) {
              return const Center(child: Text('Please select a country to start adding locations'));
            }
            return Row(
              children: [
                Expanded(
                  child: Column(
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
                            itemBuilder: (context, index) => LocationTile(
                              location: locations[index],
                              vm: widget.vm,
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
        Expanded(
          child: Observer(builder: (context) {
            final hoveredId = widget.vm.hoveredLocation?.id;
            return GoogleMap(
              mapType: MapType.normal,
              markers: widget.vm.locationsInCountry
                  .map((location) => _buildMarker(location, location.id == hoveredId))
                  .toSet(),
              initialCameraPosition: const CameraPosition(target: LatLng(0, 0), zoom: 2),
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
                final country = widget.vm.selectedCountry;
                if (country != null) {
                  _animateToCountry(country);
                }
              },
            );
          }),
        ),
      ],
    );
  }

  Marker _buildMarker(Location location, bool highlight) {
    return Marker(
      markerId: MarkerId(location.id),
      position: location.coordinates.toLatLng(),
      infoWindow: InfoWindow(title: location.name),
      alpha: highlight ? 1.0 : 0.6,
    );
  }
}

class LocationTile extends StatefulWidget {
  const LocationTile({super.key, required this.location, required this.vm});

  final Location location;
  final LocationsViewModel vm;

  @override
  State<LocationTile> createState() => _LocationTileState();
}

class _LocationTileState extends State<LocationTile> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => isHovered = true);
        widget.vm.setHoveredLocation(widget.location);
      },
      onExit: (_) {
        setState(() => isHovered = false);
        if (widget.vm.hoveredLocation == widget.location) {
          widget.vm.setHoveredLocation(null);
        }
      },
      child: Container(
        color: isHovered ? Theme.of(context).hoverColor : null,
        child: ListTile(
          dense: true,
          title: Text(widget.location.name),
          hoverColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () => EditLocationDialog.show(
                    context: context, vm: widget.vm, location: widget.location),
                icon: const Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () => widget.vm.deleteLocation(widget.location),
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

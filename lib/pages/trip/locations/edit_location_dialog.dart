import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../models/trip/locations/api/location_suggestion_response.dart';
import '../../../models/trip/locations/location.dart';
import 'edit_location_form.dart';
import 'locations_view_model.dart';

class AddLocationDialog extends StatefulWidget {
  static void show({
    required BuildContext context,
    required LocationsViewModel vm,
  }) {
    showDialog(
      context: context,
      builder: (context) => AddLocationDialog._(vm: vm),
    );
  }

  const AddLocationDialog._({required this.vm});

  final LocationsViewModel vm;

  @override
  State<AddLocationDialog> createState() => _AddLocationDialogState();
}

class _AddLocationDialogState extends State<AddLocationDialog> with SingleTickerProviderStateMixin {
  late final TabController newLocationTabController = TabController(vsync: this, length: 2);

  late EditLocationForm form = EditLocationForm(countryCode: widget.vm.selectedCountry!.code);
  bool onDetailsTab = false;
  bool loadingDetails = false;
  String? detailsError;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
          height: 800,
          width: 800,
          child: Column(
            children: [
              AppBar(
                title: const Text('Add new location'),
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                leading: onDetailsTab
                    ? IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () => onBackToSearch(),
                      )
                    : null,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: newLocationTabController,
                  children: [
                    LocationAutocompleteView(
                      vm: widget.vm,
                      onSuggestionSelected: onSuggestionSelected,
                    ),
                    Column(
                      children: [
                        if (loadingDetails) const LinearProgressIndicator(),
                        if (detailsError != null)
                          Text(
                            detailsError!,
                            style: TextStyle(color: Theme.of(context).colorScheme.error),
                          ),
                        Expanded(
                          child: LocationEditorView(form: form),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
      actions: onDetailsTab
          ? [
              TextButton(
                onPressed: () => addAnotherLocation(),
                child: const Text('Add another'),
              ),
              TextButton(
                onPressed: () => addLocation(),
                child: const Text('Add'),
              )
            ]
          : [
              TextButton(
                onPressed: () => proceedToDetails(),
                child: const Text('Add manually'),
              ),
            ],
    );
  }

  void onSuggestionSelected(LocationSuggestionResponse suggestion) async {
    setState(() {
      onDetailsTab = true;
      newLocationTabController.animateTo(1);
      detailsError = null;
      loadingDetails = true;
      form.name.set(suggestion.name);
    });
    final locationResult = await widget.vm.getLocationFromSuggestion(suggestion);
    setState(() => loadingDetails = false);

    locationResult.when(
      error: (_) => setState(() => detailsError = 'Failed to load location details'),
      success: (value) => setState(() => form = EditLocationForm(
            countryCode: widget.vm.selectedCountry!.code,
            location: value,
          )),
    );
  }

  void addLocation() {
    form.submit();
    if (!form.isValid) {
      return;
    }
    final location = form.toLocation();
    widget.vm.addLocation(location);
    Navigator.of(context).pop();
  }

  void addAnotherLocation() {
    addLocation();
    widget.vm.setLocationSearchQuery('');
    AddLocationDialog.show(context: context, vm: widget.vm);
  }

  void proceedToDetails() {
    setState(() {
      onDetailsTab = true;
      newLocationTabController.animateTo(1);
    });
  }

  void onBackToSearch() {
    setState(() {
      onDetailsTab = false;
      newLocationTabController.animateTo(0);
    });
  }
}

class EditLocationDialog extends StatefulWidget {
  static void show({
    required BuildContext context,
    required LocationsViewModel vm,
    required Location location,
  }) {
    showDialog(
      context: context,
      builder: (context) => EditLocationDialog._(vm: vm, location: location),
    );
  }

  const EditLocationDialog._({
    required this.vm,
    required this.location,
  });

  final LocationsViewModel vm;
  final Location location;

  @override
  State<EditLocationDialog> createState() => _EditLocationDialogState();
}

class _EditLocationDialogState extends State<EditLocationDialog> {
  late EditLocationForm form = EditLocationForm(
    countryCode: widget.vm.selectedCountry!.code,
    location: widget.location,
  );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
          height: 800,
          width: 800,
          child: Column(
            children: [
              AppBar(
                title: const Text('Edit location'),
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              Expanded(child: LocationEditorView(form: form)),
            ],
          )),
      actions: [
        FilledButton(
          onPressed: () => print('TODO'),
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class LocationAutocompleteView extends StatelessWidget {
  LocationAutocompleteView({
    required this.vm,
    required this.onSuggestionSelected,
    super.key,
  });

  final LocationsViewModel vm;
  final Function(LocationSuggestionResponse selectedSuggestion) onSuggestionSelected;

  late final TextEditingController searchController =
      TextEditingController(text: vm.locationSearchQuery);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Start typing a new location...',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              vm.setLocationSearchQuery('');
              searchController.text = '';
            },
          ),
        ),
        onChanged: (value) => vm.setLocationSearchQuery(value),
      ),
      Expanded(
        child: Observer(builder: (context) {
          return vm.searchResults.when(
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
                  onTap: () => onSuggestionSelected(suggestions[index]),
                ),
              ),
            ),
          );
        }),
      ),
    ]);
  }
}

class LocationEditorView extends StatelessWidget {
  const LocationEditorView({required this.form, super.key});

  final EditLocationForm form;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Observer(builder: (context) {
          return TextField(
            controller: form.name.controller,
            decoration: InputDecoration(
              label: const Text('Location name'),
              errorText: form.name.errorText(context),
            ),
            onChanged: (value) => form.name.set(value),
          );
        }),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: Observer(builder: (context) {
                return TextField(
                  controller: form.latitude.controller,
                  decoration: InputDecoration(
                    label: const Text('Latitude'),
                    errorText: form.latitude.errorText(context),
                  ),
                  onChanged: (value) => form.latitude.set(value),
                );
              }),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Observer(builder: (context) {
                return TextField(
                  controller: form.longitude.controller,
                  decoration: InputDecoration(
                    label: const Text('Longitude'),
                    errorText: form.longitude.errorText(context),
                  ),
                  onChanged: (value) => form.longitude.set(value),
                );
              }),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

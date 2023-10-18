import 'package:flutter/material.dart';

import '../../models/trip/common/country.dart';
import '../../models/trip/trip.dart';

class EditCountriesDialog extends StatefulWidget {
  const EditCountriesDialog({
    required this.trip,
    required this.onCountriesSelected,
    super.key,
  });

  final Trip trip;
  final Function(List<Country> countries) onCountriesSelected;

  static void show({
    required BuildContext context,
    required Trip trip,
    required Function(List<Country> country) onCountriesSelected,
  }) {
    showDialog(
      context: context,
      builder: (context) => EditCountriesDialog(
        trip: trip,
        onCountriesSelected: (countries) => onCountriesSelected(countries),
      ),
    );
  }

  @override
  State<EditCountriesDialog> createState() => _EditCountriesDialogState();
}

class _EditCountriesDialogState extends State<EditCountriesDialog> {
  final _searchController = TextEditingController();
  final _allCountries = Country.all;
  List<Country> _filteredCountries = <Country>[];
  late List<Country> _selectedCountries;
  bool _hasInput = false;
  final _halfWidth = 360.0;
  FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _filteredCountries = _allCountries;
    _selectedCountries = List.from(widget.trip.countries ?? []);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(40),
      title: const Text('Select Countries'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            widget.onCountriesSelected(_selectedCountries);
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: _halfWidth,
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  focusNode: searchFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: _hasInput
                        ? IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: _clearSearchResults,
                          )
                        : null,
                  ),
                  onChanged: _filterSearchResults,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _filteredCountries.length,
                    itemBuilder: (context, index) {
                      final country = _filteredCountries[index];
                      return CountryTile(
                        country: country,
                        onTap: () => _onCountrySelected(country),
                        isSelected: _selectedCountries.contains(country),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const VerticalDivider(),
          SizedBox(
            width: _halfWidth,
            child: Column(
              children: [
                const Text('Selected Countries'),
                Expanded(
                  child: ListView.builder(
                    itemCount: _selectedCountries.length,
                    itemBuilder: (context, index) {
                      final country = _selectedCountries[index];
                      return SelectedCountryTile(
                        country: country,
                        onRemove: () => _onCountrySelected(country),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _clearSearchResults() {
    _searchController.text = '';
    _filterSearchResults('');
  }

  void _filterSearchResults(String query) {
    final filteredCountries = _allCountries.where((country) {
      final name = country.name(context);
      return name.toLowerCase().contains(query.toLowerCase());
    }).toList();
    setState(() {
      _filteredCountries = filteredCountries;
      _hasInput = query.isNotEmpty;
    });
  }

  void _onCountrySelected(Country country) {
    setState(() {
      if (!_selectedCountries.contains(country)) {
        _selectedCountries.add(country);
      } else {
        _selectedCountries.remove(country);
      }
      _selectedCountries.sort((a, b) => a.name(context).compareTo(b.name(context)));
    });
    _clearSearchResults();
    searchFocusNode.requestFocus();
  }
}

const flagIconFontSize = 14.0;

class SelectedCountryTile extends StatelessWidget {
  const SelectedCountryTile({
    required this.country,
    required this.onRemove,
    super.key,
  });

  final Country country;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: country.flagIcon(),
      title: Text(country.name(context)),
      contentPadding: const EdgeInsets.only(left: 16, right: 4),
      trailing: IconButton(
        icon: const Icon(Icons.close),
        onPressed: onRemove,
      ),
    );
  }
}

class CountryTile extends StatelessWidget {
  const CountryTile({
    required this.country,
    required this.onTap,
    required this.isSelected,
    super.key,
  });

  final Country country;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        dense: true,
        leading: country.flagIcon(),
        contentPadding: const EdgeInsets.only(left: 16, right: 12),
        title: Text(
          country.name(context),
          style: TextStyle(
              fontSize: 14, color: isSelected ? Theme.of(context).colorScheme.primary : null),
        ),
        trailing:
            isSelected ? Icon(Icons.check, color: Theme.of(context).colorScheme.primary) : null,
      ),
    );
  }
}

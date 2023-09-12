import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';

import '../../../messages.dart';
import '../../../widgets/home_icon.dart';
import '../../../widgets/settings_icon.dart';
import 'new_trip_view_model.dart';

class NewTripPage extends StatefulWidget {
  const NewTripPage({
    required this.vm,
    super.key,
  });

  final NewTripViewModel vm;

  @override
  State<NewTripPage> createState() => _NewTripPageState();
}

class _NewTripPageState extends State<NewTripPage> {
  @override
  Widget build(BuildContext context) {
    final vm = widget.vm;
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 960,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'How exciting, you\'re planning a new trip!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 24),
                  const Text('Give your trip a name - something short and memorable'),
                  const SizedBox(height: 16),
                  Observer(builder: (context) {
                    return TextField(
                      decoration: InputDecoration(
                        hintText: 'Trip name',
                        errorText: vm.tripNameError?.message(vm, context),
                      ),
                      onChanged: (value) => vm.setTripName(value),
                    );
                  }),
                  const SizedBox(height: 24),
                  const Text(
                      'When are you going? This doesn\'t have to be exact, you can change it later.'),
                  const SizedBox(height: 16),
                  _TripDatesSelector(vm: vm),
                  const SizedBox(height: 24),
                  Observer(builder: (context) {
                    return Text('Trip duration: ${vm.tripDuration} days');
                  }),
                  const SizedBox(height: 24),
                  const Text('Where will you be travelling?'),
                  const SizedBox(height: 8),
                  _TripCountriesSelector(vm: vm),
                  Center(
                    child: FilledButton(
                      onPressed: () => saveTrip(),
                      child: const Text('Create Trip'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void saveTrip() {
    widget.vm.createTrip();
  }
}

final _dateFormat = DateFormat("EEEE, MMM d, yyyy");

extension _DateTimeExtensions on DateTime {
  String displayFormat() {
    return _dateFormat.format(this);
  }
}

class InputFieldContainer extends StatefulWidget {
  const InputFieldContainer({
    required this.onTap,
    required this.child,
    this.error,
    super.key,
  });

  final VoidCallback onTap;

  final Widget child;
  final String? error;

  @override
  State<InputFieldContainer> createState() => _InputFieldContainerState();
}

class _InputFieldContainerState extends State<InputFieldContainer> {
  bool isFocussed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onFocusChange: (newFocus) => setState(() => isFocussed = newFocus),
      child: InputDecorator(
        isFocused: isFocussed,
        decoration: InputDecoration(
          errorText: widget.error,
          contentPadding: const EdgeInsets.all(12),
        ),
        child: widget.child,
      ),
    );
  }

  Color getOutlineColor(BuildContext context) {
    final theme = Theme.of(context);
    return isFocussed
        ? theme.primaryColor
        : theme.inputDecorationTheme.enabledBorder!.borderSide.color;
  }

  double getOutlineWidth() {
    return isFocussed ? 2 : 1;
  }
}

class _TripDatesSelector extends StatelessWidget {
  const _TripDatesSelector({required this.vm});

  final NewTripViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: InputFieldContainer(
              onTap: () => selectStartDate(context),
              error: vm.startDateError?.message(vm, context),
              child: Row(
                children: [
                  const Icon(Icons.calendar_today),
                  const SizedBox(width: 8),
                  Text(
                    vm.startDate?.displayFormat() ?? 'Start date',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: InputFieldContainer(
              onTap: () => selectEndDate(context),
              error: vm.endDateError?.message(vm, context),
              child: Row(
                children: [
                  const Icon(Icons.calendar_today),
                  const SizedBox(width: 8),
                  Text(
                    vm.endDate?.displayFormat() ?? 'End date',
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }

  void selectStartDate(BuildContext context) async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: vm.startDate ?? now,
      firstDate: now.add(const Duration(days: -365)),
      lastDate: now.add(const Duration(days: 10 * 365)),
    );
    if (date != null) {
      vm.setStartDate(date);
    }
  }

  void selectEndDate(BuildContext context) async {
    final now = DateTime.now();
    final startDate = vm.startDate;
    final date = await showDatePicker(
      context: context,
      initialDate: startDate?.add(const Duration(days: 1)) ?? now,
      firstDate: startDate ?? now.add(const Duration(days: -365)),
      lastDate: (startDate ?? now).add(const Duration(days: 10 * 365)),
    );
    if (date != null) {
      vm.setEndDate(date);
    }
  }
}

class _TripCountriesSelector extends StatelessWidget {
  const _TripCountriesSelector({required this.vm});

  final NewTripViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RadioListTile(
            value: TripCountries.single,
            groupValue: vm.tripCountries,
            onChanged: (value) => vm.setTripCountries(value!),
            title: const Text('One country'),
          ),
          RadioListTile(
            value: TripCountries.multiple,
            groupValue: vm.tripCountries,
            onChanged: (value) => vm.setTripCountries(value!),
            title: const Text('Multiple countries'),
          ),
          if (vm.tripCountries == TripCountries.multiple)
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text('A great globe-trotting adventure! You can add the countries later'),
            ),
          if (vm.tripCountries == TripCountries.single)
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 12),
                const Text(
                  'Fantastic! Which country will you be exploring on this trip?',
                ),
                const SizedBox(height: 16),
                InputFieldContainer(
                  onTap: () => selectSingleCountry(context),
                  error: vm.singleCountryError?.message(vm, context),
                  child: Row(children: [
                    const Icon(Icons.map),
                    const SizedBox(width: 8),
                    Text(
                      vm.country?.displayName ?? 'Select country',
                    ),
                  ]),
                )
              ],
            ),
          if (vm.tripCountriesError?.message(vm, context) != null)
            Text(
              vm.tripCountriesError!.message(vm, context)!,
              style: Theme.of(context).inputDecorationTheme.errorStyle,
            ),
        ],
      );
    });
  }

  void selectSingleCountry(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: false,
      onSelect: (Country country) {
        vm.setSingleCountry(country.countryCode);
      },
    );
  }
}

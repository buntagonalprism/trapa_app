import 'package:flutter/material.dart';

import 'trip_view_model.dart';

class TripPage extends StatelessWidget {
  const TripPage({
    required this.vm,
    super.key,
  });

  final TripViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(vm.tripId),
      ),
    );
  }
}

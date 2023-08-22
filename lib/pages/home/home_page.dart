import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'home_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.vm,
    super.key,
  });

  final HomeViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (context) {
        return Placeholder(
          child: Text('Welcome ${vm.userEmail}'),
        );
      }),
    );
  }
}

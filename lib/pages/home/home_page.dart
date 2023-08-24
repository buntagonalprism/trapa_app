import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../injection.dart';
import '../../messages.dart';
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
            )
          ],
        ),
      ),
    );
  }
}

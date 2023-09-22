import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../injection.dart';
import '../messages.dart';
import '../router.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () => getIt<AppRouter>().goToHome(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.travel_explore,
              color: theme.colorScheme.onSurface,
              size: 24,
            ),
            const SizedBox(width: 8),
            Text(
              Messages.of(context)!.title,
              style: GoogleFonts.audiowide(
                textStyle: theme.textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

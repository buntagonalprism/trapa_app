import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../injection.dart';
import '../messages.dart';
import '../router.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => getIt<AppRouter>().goToHome(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.travel_explore,
              color: Colors.white,
              size: 24,
            ),
            const SizedBox(width: 8),
            Text(
              Messages.of(context)!.title,
              style: GoogleFonts.audiowide(
                textStyle: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

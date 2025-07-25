import 'package:casimir_chevalier_2025/style/style.dart';
import 'package:flutter/material.dart';

class TimelineBackground extends StatelessWidget {
  const TimelineBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [SatStyle.softRedColor, SatStyle.softDarkBlueColor],
        ),
      ),
      child: child,
    );
  }
}

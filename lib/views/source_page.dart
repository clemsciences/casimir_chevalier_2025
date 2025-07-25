import 'package:casimir_chevalier_2025/style/backgournd/main_background.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:casimir_chevalier_2025/views/source/source_heading.dart';
import 'package:flutter/material.dart';

class SourcePage extends StatelessWidget {
  const SourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCasimirScaffold(
      body: MainBackground(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [SourceHeading()],
          ),
        ),
      ),
    );
  }
}

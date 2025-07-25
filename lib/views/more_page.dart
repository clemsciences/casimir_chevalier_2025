import 'package:casimir_chevalier_2025/style/backgournd/main_background.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCasimirScaffold(
      body: MainBackground(
        child: SingleChildScrollView(child: Column(children: [

        ])),
      ),
    );
  }
}

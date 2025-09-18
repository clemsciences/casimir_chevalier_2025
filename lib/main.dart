import 'package:casimir_chevalier_2025/models/app/app_choice.dart';
import 'package:casimir_chevalier_2025/routes/casimir_routes.dart';
import 'package:casimir_chevalier_2025/style/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  usePathUrlStrategy();
  runApp(CasimirChevalierApp(appChoice: AppChoice.casimirChevalier));
}

class CasimirChevalierApp extends StatelessWidget {
  final AppChoice appChoice;

  const CasimirChevalierApp({super.key, required this.appChoice});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Casimir Chevalier',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: casimirChevalierRouter,
    );
  }
}

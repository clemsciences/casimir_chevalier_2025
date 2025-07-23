import 'package:casimir_chevalier_2025/models/app/app_choice.dart';
import 'package:casimir_chevalier_2025/routes/casimir_routes.dart';
import 'package:casimir_chevalier_2025/style/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(appChoice: AppChoice.casimirChevalier));
}

class MyApp extends StatelessWidget {
  final AppChoice appChoice;

  const MyApp({super.key, required this.appChoice});

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

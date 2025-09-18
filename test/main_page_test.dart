// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:casimir_chevalier_2025/models/app/app_choice.dart';
import 'package:casimir_chevalier_2025/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:casimir_chevalier_2025/main.dart';

void main() {
  testWidgets('Check that the title is correct', (WidgetTester tester) async {
    await tester.pumpWidget(const MainPage());

    // Check that the title is correct.
    expect(find.text('Casimir Chevalier - 2025'), findsOneWidget);
  });

  testWidgets('Check the link to the JEP 2025 page works', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: MainPage()));

    // Tap the JEP 2025 button.
    await tester.tap(find.text('JEP 2025'));
    await tester.pumpAndSettle(); // Wait for navigation to complete.
  });

  testWidgets('Check the link to go to the SAT page works', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: MainPage()));

    // Tap the SAT button.
    await tester.tap(find.text('SAT'));
    await tester.pumpAndSettle(); // Wait for navigation to complete.
  });
}

import 'package:casimir_chevalier_2025/style/backgournd/main_background.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:casimir_chevalier_2025/views/text/link_textspan.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCasimirScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainBackground(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "A propos",
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: SelectableText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Ce site internet a été conçu pour être un supplément de l'exposition à ",
                          ),
                          LinkTextSpan(
                            urlText: "la Bibliothèque d'Histoire de la Touraine",
                            url: "https://bht.societearcheotouraine.fr",
                          ),
                          TextSpan(text: " qui fait partie de "),
                          LinkTextSpan(
                            url: "https://societearcheotouraine.eu",
                            urlText: "la Société archéologique de Touraine",
                          ),
                          TextSpan(text: "."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  SelectableText(
                    "Développement",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: 10),
                  SelectableText.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "Le code est accessible à tous sur "),
                        LinkTextSpan(
                          url:
                          "https://github.com/clemsciences/casimir_chevalier_2025",
                          urlText:
                          "https://github.com/clemsciences/casimir_chevalier_2025",
                        ),
                        TextSpan(text: ".")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

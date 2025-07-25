import 'package:casimir_chevalier_2025/routes/casimir_routes.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        context.pop();
      },
      child: MainCasimirScaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Center(
              //   child: Image.asset(
              //     'assets/images/mademoiselle_cloque.jpg', // Assurez-vous d'avoir cette image dans vos assets
              //     height: 300,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              const SizedBox(height: 20),
              const Text(
                'Erreur',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                "Vous avez été mené vers une page qui n'existe pas. Retournez à l'accueil pour continuer.",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
              ElevatedButton(
                onPressed: () {
                  context.push(CasimirChevalierRoutes.mainRoute);
                },
                child: Text("Accueil"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

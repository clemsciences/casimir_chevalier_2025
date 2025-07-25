import 'dart:convert';

import 'package:casimir_chevalier_2025/routes/casimir_routes.dart';
import 'package:casimir_chevalier_2025/routes/routes.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:go_router/go_router.dart';

class ChaptersPage extends StatelessWidget {
  const ChaptersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        context.pop();
      },
      child: MainCasimirScaffold(
        body: FutureBuilder<List<String>>(
          future: _loadChapters(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Erreur: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('Aucun chapitre trouvé.'));
            } else {
              final chapters = snapshot.data!;
              return ListView.builder(
                itemCount: chapters.length,
                itemBuilder: (context, index) {
                  final fileName = chapters[index];
                  return ListTile(
                    title: Text(
                      fileName
                          .replaceAll('.txt', '')
                          .replaceAll("_", " ")
                          .toUpperCase(),
                    ),
                    // Affiche le nom du fichier sans l'extension
                    onTap: () {
                      context.push(
                        "${CasimirChevalierRoutes.chapterRoute}/$index",
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  Future<List<String>> _loadChapters() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // Filtrer les clés pour ne garder que celles dans le dossier assets/books/cloque/chapters/
    final chapterPaths = manifestMap.keys
        .where((String key) => key.startsWith('assets/books/cloque/chapters/'))
        .map(
          (path) => path.split('/').last,
        ) // Garder uniquement le nom du fichier
        .toList();
    return chapterPaths;
  }
}

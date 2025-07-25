import 'dart:convert';

import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:go_router/go_router.dart';

class ChapterPage extends StatelessWidget {
  final int chapterId;

  const ChapterPage({super.key, required this.chapterId});

  Future<String> _loadChapterContent() async {
    try {
      // Charger la liste des noms de fichiers depuis le Manifest.json
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifestMap = json.decode(manifestContent);

      // Filtrer les fichiers dans le dossier assets/books/cloque/chapters/
      final chapterFiles = manifestMap.keys
          .where(
            (String key) => key.startsWith('assets/books/cloque/chapters/'),
          )
          .toList();
      chapterFiles.sort(); // Assurer l'ordre des chapitres
      String filePath = chapterFiles[chapterId]; // chapterId est basé sur 1
      return await rootBundle.loadString(filePath);
    } catch (e) {
      // Gérer l'erreur si le fichier n'est pas trouvé ou si une autre erreur se produit
      print("Erreur lors du chargement du chapitre : $e");
      return "Contenu du chapitre non trouvé.";
    }
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        context.pop();
      },
      child: MainCasimirScaffold(
        body: Container(
          child: FutureBuilder<String>(
            future: _loadChapterContent(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return SelectableText("Erreur: ${snapshot.error}");
              } else {
                // Amélioration de la lisibilité pour une lecture longue durée
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: SelectableText(
                    snapshot.data ?? "Contenu vide.",
                    style: const TextStyle(
                      fontSize: 18,
                      height:
                          1.5,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

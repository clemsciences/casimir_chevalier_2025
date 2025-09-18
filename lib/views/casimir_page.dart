import 'package:casimir_chevalier_2025/style/backgournd/main_background.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:casimir_chevalier_2025/views/text/bullet_textspan.dart';
import 'package:flutter/material.dart';

class CasimirPage extends StatelessWidget {
  const CasimirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCasimirScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            MainBackground(
              child: Center(
                child: Text(
                  "Biographie sommaire de Casimir Chevalier",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [SelectableText.rich(
                  TextSpan(
                    children: [
                      BulletTextSpan(content: "Né le 7 mars 1825 à Saché, en Indre-et-Loire, où son père Barthélémy exerce la profession de marchand de bois, mais il passe sa jeunesse chez un parent à Tours."),
                      BulletTextSpan(content: "Etudes au petit séminaire de Tours."),
                      BulletTextSpan(content: "Ordonné prêtre (1848)."),
                      BulletTextSpan(content: "Devient sous-directeur de l'Institut Saint-Gonzague de Tours (1846-1849)."),
                      BulletTextSpan(content: "Vicaire de la cathédrale de Tours (1849-1853)."),
                      BulletTextSpan(content: "Principal du collège communal de Loches (1853-1856)."),
                      BulletTextSpan(content: "Curé de Civray-sur-Cher (1857-1869), aujourd'hui Civray de Touraine."),
                      BulletTextSpan(content: "Délégué cantonal pour la visite des écoles (1858-1869) chargé par la ville de Tours d'écrire l'histoire de l'invasion prussienne en Indre-et-Loire (1870-1871)."),
                      BulletTextSpan(content: "Historiographe du diocèse de Tours (1875)."),
                      BulletTextSpan(content: "Clerc national du Sacré Collège et secrétaire consistorial pour la France près du Sacré-Collège (1878)."),
                      BulletTextSpan(content: "Camérier secret du pape Léon XIII à Rome (1878)."),
                      BulletTextSpan(content: "Membre, puis membre d'honneur de l'Académie pontificale d'archéologie à Rome (1879)."),
                      BulletTextSpan(content: "S'intéresse à l'histoire, l'archéologie, la Préhistoire, la géologie."),
                      BulletTextSpan(content: "Chargé par la Société d'agriculture, le conseil général d'Indre-et-Loire et le ministère de l'Instruction publique de dresser la carte géologique (et agronomique) du département d'Indre-et-Loire (1849)."),
                      BulletTextSpan(content: "Responsable de l'inventaire des objets d'art des églises du Département (1875-1879)."),
                      BulletTextSpan(content: "Historien de Chenonceau."),
                      BulletTextSpan(content: "Membre (1848), puis secrétaire perpétuel de la Société d'agriculture, sciences, arts et belles-lettres du département d'Indre-et-Loire (1859-1878)."),
                      BulletTextSpan(content: "Membre correspondant (1848), titulaire (ca 1860), secrétaire général adjoint (avril 1860-janvier 1868), vice-président (janvier 1868-avril 1871), président de la Société archéologique de Touraine (avril 1871-juillet 1875)."),
                      //BulletTextSpan(content: ""),
                      //BulletTextSpan(content: ""),
                    ],
                  ),
                )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

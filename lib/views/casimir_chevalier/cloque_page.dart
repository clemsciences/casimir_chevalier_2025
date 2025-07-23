import 'package:casimir_chevalier_2025/routes/casimir_routes.dart';
import 'package:casimir_chevalier_2025/views/casimir_chevalier/text/citation_text.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MademoiselleCloquePage extends StatelessWidget {
  const MademoiselleCloquePage({super.key});

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
              const SelectableText(
                'Mademoiselle Cloque',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SelectableText(
                'par René Boylesve',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 20),
              SelectableText(
                'Mademoiselle Cloque est un roman de l\'écrivain français René Boylesve, publié en 1899. L\'histoire se déroule dans la petite ville de Beaumont-en-Véron, en Touraine, et dépeint la vie provinciale de la fin du XIXe siècle à travers le personnage principal, Adélaïde Cloque, une vieille fille dévote et quelque peu excentrique.\n\nLe roman explore les thèmes de la solitude, des conventions sociales, de la religion et des petites rivalités au sein d\'une communauté rurale. Mademoiselle Cloque, avec ses manies et sa vision du monde très personnelle, est à la fois une figure touchante et comique. Boylesve, avec son style élégant et son sens aigu de l\'observation, offre un portrait vivant et nuancé de la société de son temps.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20),

              SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Casimir Chevalier, en tant qu'archéologue en chef du chantier de fouilles a pu essuyer des critiques. Dans ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: "Mademoiselle Cloque",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text:
                          ", le personnage principal commente un article d'un journal : \n\n",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CitationText(text: """Ce n’était pas tout ; l’article se terminait par des lignes ambiguës quant aux personnes visées, mais très claires quant au sens de l’accusation. Elles flétrissaient la conduite équivoque de certaines « notabilités » dont l’ostensible dévotion à saint Martin, jointe à la compétence reconnue tant en matière d’archéologie qu’en «  la pratique des affaires , » avait fortement contribué à affermir l’espoir de voir se relever la Basilique, alors que ces mêmes notabilités favorisaient secrètement, et cela «  dans un but qu’il restait à élucider », le misérable projet de l’église bâtarde."""),


              SelectableText.rich(
                TextSpan(
                  text:
                      "\n\nCasimir Chevalier est un notable qui apparaît comme dévoué à Saint Martin aussi bien du point de vue religieux, qu'au point de vue archéologique. Il a cependant soutenu l'architecte Victor Laloux pour la reconstruction d'une basilique plus modeste que la collégiale.",
                ),
              ),

              const SizedBox(height: 16),

              Card(
                child: ListTile(
                  title: Text("Voir les chapitres"),
                  onTap: () {
                    context.push(CasimirChevalierRoutes.chaptersRoute);
                  },
                ),
              ),
              const SizedBox(height: 16),
              ListTile(title: Text("Les lieux mentionnées"),
                onTap: () {
                  context.push(CasimirChevalierRoutes.locationsRoute);
                },
              ),
              ListTile(title: Text("Les personnages mentionnées"),
                onTap: () {
                  context.push(CasimirChevalierRoutes.peopleRoute);
                },
              ),
              ListTile(title: Text("Les institutions mentionnées"),
                onTap: () {
                  context.push(CasimirChevalierRoutes.institutionsRoute);
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

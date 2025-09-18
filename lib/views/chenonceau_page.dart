import 'package:casimir_chevalier_2025/style/backgournd/main_background.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:casimir_chevalier_2025/views/text/bullet_textspan.dart';
import 'package:casimir_chevalier_2025/views/text/paragraph_textspan.dart';
import 'package:flutter/material.dart';

class ChenonceauPage extends StatelessWidget {
  const ChenonceauPage({super.key});

  final String text =
      """En 1857, Casimir Chevalier devient curé de Civray, et le restera jusqu’en 1859. Des relations s’établissent avec le comte René de Villeneuve, à qui Mme Dupin, sa tante, avait légué le château de Chenonceau.

Casimir Chevalier retrouve les archives du château dissimulées pendant la Révolution (quelque 4500 pièces, les plus anciennes datant du XIIIe siècle et les plus récentes provenant du comte de Villeneuve lui-même). Pendant sept ans d’un labeur quasi quotidien, il va se consacrer à leur dépouillement intégral.
Il acquiert à cette occasion un incomparable bagage et une méthode de travail en s’initiant :
- à la diplomatique 
- à la paléographie (la bâtarde gothique, la cursive ronde du XVIIe siècle) pour inventorier le chartrier
- au droit coutumier pour démêler la procédure longue et compliquée initiée par Diane de Poitiers 
- à la généalogie pour situer les propriétaires successifs du domaine
- aux techniques de classement des documents d’archives 

De 1862 à 1879, il publie douze ouvrages sur Chenonceau, de l’article de quelques pages au livre de six cents, qui lui attirent une certaine gloire.
En 1863, il reçoit la Légion d’honneur pour ses toutes premières publications sur Chenonceau. Il obtient le premier prix d’une valeur de 1000 francs pour son Histoire de Chenonceau, au concours historique de Poitiers en 1869. En 1870, il n’obtient que la troisième place au concours général à Paris en raison du caractère trop local de son sujet.
En 1869, Casimir Chevalier est lauréat au Congrès archéologique de Loches, en 1870, officier d’académie, nommé sur concours. Vice-président de la Société archéologique, il devint du coup une autorité reconnue et recherchée.
Le maire d’Amboise s’adresse à lui pour faire l’inventaire des archives de sa commune.

Il fut membre du conseil de surveillance de la magnanerie expérimentale de Chenonceau de 1858 à 1863 (magnanerie installée par Mme de Villeneuve dans le pavillon des Dômes, à la place du cabinet de physique créé par Louis Dupin de Francueil aidé par Jean-Jacques Rousseau).

En 1864, les enfants du comte de Villeneuve, héritiers du domaine, le vendent à Mme Pelouze, sœur de Daniel Wilson, député de Loches. Casimir Chevalier entretient des relations amicales profondes avec les nouveaux propriétaires : il assistera notamment au mariage de Wilson avec Alice Grévy le 22 octobre 1881. 

 « J’assiste le 22 au Palais de l’Élysée au mariage de M. Wilson avec Mlle Alice Grévy, fille du Président de la République. Je suis introduit dans le salon des Souverains où se trouvent les invités privilégiés, ministres, sous-secrétaires d’État, au nombre de 35 environ et je signe, avec MM.Gambetta, Léon Say, Jules Ferry etc. sur le registre des actes de l’état-civil et sur ceux de la paroisse. La présence d’un prêtre, en grand habit prélatice, étonne tous les assistants. Ce qui met le comble à la stupéfaction, c’est que le président Grévy traverse toute la salle et vient me serrer les mains en me remerciant d’être venu prendre part à cette fête de famille. À la messe dite par le curé de la Madeleine, j’assiste sur un prie-Dieu à gauche de l’autel », (Souvenirs de Rome, octobre 1881). « Me voici donc en relations faciles avec la famille du Président de la République. Je n’en suis pas fâché » (lettre à l’abbé Archambault)

De 1865 à 1878, Mme Pelouze entreprend de grands travaux de restauration du château pour plus d’un million et demi de francs-or. Casimir Chevalier y prend une part active, comme il l’écrit en 1890.
« Je puis le dire maintenant : je revendique une large part dans l'inspiration des travaux d'art qui ont eu pour but de restituer au château sa physionomie primitive de Renaissance française ».

En 1889, Mme Pelouze, criblée de dettes, voit son domaine saisi, vendu judiciairement et adjugé au Crédit Foncier, tandis que son frère, Daniel Wilson, est condamné pour trafic de décorations, ce qui entrainera la démission de son beau-père Jules Grévy.
Paul Verger nous raconte que l'une des dernières visites de Mgr Chevalier à Chenonceau fut employée à dresser l'inventaire des objets d'art, des meubles et des tableaux du château, lorsque les enchères dispersèrent " tous ces trésors accumulés depuis le XVIe siècle. Il conseilla la princesse Augustin Galitzin, qui avait passé toute sa jeunesse à Chenonceau près de son grand-père, le comte de Villeneuve, et qui céda à Mme Pelouze les derniers souvenirs qui lui restaient de Chenonceau, des tableaux, des objets d'art, des autographes, et quatre-vingt-huit lettres inédites de George Sand.

Notons que la BHT possède dans ses fonds privés l’inventaire des meubles du château de Chenonceau en 1752, et un livre de comptes de Mme Dupin. La Société archéologique de Touraine compte dans ses collections les instruments de physique provenant du cabinet créé par Louis Dupin de Francueil. Un témoignage des relations de son ancien président avec Chenonceau ?


""";

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
                  "Liens de Casimir Chevalier avec Chenonceau",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: SelectableText.rich(
                    TextSpan(
                      children: [
                        ParagraphTextSpan(
                          context:
                              "En 1857, Casimir Chevalier devient curé de Civray, et le restera jusqu’en 1859. Des relations s’établissent avec le comte René de Villeneuve, à qui Mme Dupin, sa tante, avait légué le château de Chenonceau.",
                        ),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "Casimir Chevalier retrouve les archives du château dissimulées pendant la Révolution (quelque 4500 pièces, les plus anciennes datant du XIIIe siècle et les plus récentes provenant du comte de Villeneuve lui-même). Pendant sept ans d’un labeur quasi quotidien, il va se consacrer à leur dépouillement intégral."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(
                          context:
                              "Il acquiert à cette occasion un incomparable bagage et une méthode de travail en s’initiant :",
                        ),
                        BulletTextSpan(content: "à la diplomatique"),
                        BulletTextSpan(content: "à la paléographie (la bâtarde gothique, la cursive ronde du XVIIe siècle) pour inventorier le chartrier"),
                        BulletTextSpan(content: "au droit coutumier pour démêler la procédure longue et compliquée initiée par Diane de Poitiers"),
                        BulletTextSpan(content: "à la généalogie pour situer les propriétaires successifs du domaine"),
                        BulletTextSpan(content: "aux techniques de classement des documents d’archives"),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(
                          context:
                              "De 1862 à 1879, il publie douze ouvrages sur Chenonceau, de l’article de quelques pages au livre de six cents, qui lui attirent une certaine gloire.",
                        ),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "En 1863, il reçoit la Légion d’honneur pour ses toutes premières publications sur Chenonceau. Il obtient le premier prix d’une valeur de 1000 francs pour son Histoire de Chenonceau, au concours historique de Poitiers en 1869. En 1870, il n’obtient que la troisième place au concours général à Paris en raison du caractère trop local de son sujet."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "En 1869, Casimir Chevalier est lauréat au Congrès archéologique de Loches, en 1870, officier d’académie, nommé sur concours. Vice-président de la Société archéologique, il devint du coup une autorité reconnue et recherchée."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "Le maire d’Amboise s’adresse à lui pour faire l’inventaire des archives de sa commune."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "Il fut membre du conseil de surveillance de la magnanerie expérimentale de Chenonceau de 1858 à 1863 (magnanerie installée par Mme de Villeneuve dans le pavillon des Dômes, à la place du cabinet de physique créé par Louis Dupin de Francueil aidé par Jean-Jacques Rousseau)."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "En 1864, les enfants du comte de Villeneuve, héritiers du domaine, le vendent à Mme Pelouze, sœur de Daniel Wilson, député de Loches. Casimir Chevalier entretient des relations amicales profondes avec les nouveaux propriétaires : il assistera notamment au mariage de Wilson avec Alice Grévy le 22 octobre 1881."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "« J’assiste le 22 au Palais de l’Élysée au mariage de M. Wilson avec Mlle Alice Grévy, fille du Président de la République. Je suis introduit dans le salon des Souverains où se trouvent les invités privilégiés, ministres, sous-secrétaires d’État, au nombre de 35 environ et je signe, avec MM.Gambetta, Léon Say, Jules Ferry etc. sur le registre des actes de l’état-civil et sur ceux de la paroisse. La présence d’un prêtre, en grand habit prélatice, étonne tous les assistants. Ce qui met le comble à la stupéfaction, c’est que le président Grévy traverse toute la salle et vient me serrer les mains en me remerciant d’être venu prendre part à cette fête de famille. À la messe dite par le curé de la Madeleine, j’assiste sur un prie-Dieu à gauche de l’autel », (Souvenirs de Rome, octobre 1881). « Me voici donc en relations faciles avec la famille du Président de la République. Je n’en suis pas fâché » (lettre à l’abbé Archambault)"),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "De 1865 à 1878, Mme Pelouze entreprend de grands travaux de restauration du château pour plus d’un million et demi de francs-or. Casimir Chevalier y prend une part active, comme il l’écrit en 1890."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "« Je puis le dire maintenant : je revendique une large part dans l'inspiration des travaux d'art qui ont eu pour but de restituer au château sa physionomie primitive de Renaissance française »."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "En 1889, Mme Pelouze, criblée de dettes, voit son domaine saisi, vendu judiciairement et adjugé au Crédit Foncier, tandis que son frère, Daniel Wilson, est condamné pour trafic de décorations, ce qui entrainera la démission de son beau-père Jules Grévy."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "Paul Verger nous raconte que l'une des dernières visites de Mgr Chevalier à Chenonceau fut employée à dresser l'inventaire des objets d'art, des meubles et des tableaux du château, lorsque les enchères dispersèrent tous ces trésors accumulés depuis le XVIe siècle. Il conseilla la princesse Augustin Galitzin, qui avait passé toute sa jeunesse à Chenonceau près de son grand-père, le comte de Villeneuve, et qui céda à Mme Pelouze les derniers souvenirs qui lui restaient de Chenonceau, des tableaux, des objets d'art, des autographes, et quatre-vingt-huit lettres inédites de George Sand."),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan(context: "Notons que la BHT possède dans ses fonds privés l’inventaire des meubles du château de Chenonceau en 1752, et un livre de comptes de Mme Dupin. La Société archéologique de Touraine compte dans ses collections les instruments de physique provenant du cabinet créé par Louis Dupin de Francueil. Un témoignage des relations de son ancien président avec Chenonceau ?"),
                        ParagraphTextSpan.newParagraph(),
                        ParagraphTextSpan.newParagraph(),




    ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}

import 'package:casimir_chevalier_2025/models/sources/author.dart';
import 'package:casimir_chevalier_2025/models/sources/source_item_data.dart';

class SourcesData {
  List<SourceItemData> data = [
    SourceItemData(
      title: 'Plan général de la ville de Tours',
      url: 'http://catalogue.bnf.fr/ark:/12148/cb407267563',
      authors: [
        Author(firstName: "Jacques-Xavier", lastName: "Carré de Busserolle"),
      ],

      publisher: 'Publié par P. Verneaux, éditeur (Tours)',
      date: DateTime(1891),
      id: '',
      description: """
     Titre :  Plan général de la ville de Tours
Auteur  :  Carré de Busserolle, Jacques-Xavier (1823-1904). Auteur du texte
Éditeur  :  Publié par P. Verneaux, éditeur (Tours)
Éditeur  :  [1891] (Tours)
Date d'édition :  1891
Sujet :  Tours
Notice du catalogue :  http://catalogue.bnf.fr/ark:/12148/cb407267563
Relation :  Extrait de Itinéraire historique et départemental du Voyageur en Touraine / Carré de Busserolle. Tours, Verneaux, 1891, .
Type :  carte
Type :  image fixe
Langue  :  français
Format :  1 flle : en coul. ; 46 x 62 cm
Format :  image/jpeg
Format :  Nombre total de vues : 1
Description :  Vendeur : Verneaux, P. (18..-.... ; éditeur)....
Description :  Échelle(s) : Echelle de 1 m. à 1:10 000
Droits  :  Consultable en ligne
Identifiant :  ark:/12148/btv1b8445909j
Source  :  Bibliothèque nationale de France, département Cartes et plans, GE D-7010
Couverture :  France – Centre-Val-de-Loire – Indre-et-Loire
Conservation numérique :  Bibliothèque nationale de France
Date de mise en ligne  :  01/08/2011 
    """,
    ),
  ];

  Map<String, dynamic> toJson() {
    return {"sources": data.map((item) => item.toJson()).toList()};
  }
}

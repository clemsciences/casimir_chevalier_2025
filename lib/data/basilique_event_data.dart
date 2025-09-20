import 'package:casimir_chevalier_2025/models/timeline/basilique_event_data_item.dart';

class BasiliqueEventData {
  final List<BasiliqueEventDataItem> data = [
    BasiliqueEventDataItem(
      text: "Martin devient évêque de Tours",
      timestamp: DateTime(371, 7, 4),
      isImportant: true,
      scale: BasiliqueEventDataItem.provinceScale,
      theme: BasiliqueEventDataItem.religionTheme,
    ),
    BasiliqueEventDataItem(
      text: "Martin meurt à Candes.",
      timestamp: DateTime(397),
      isImportant: true,
      theme: BasiliqueEventDataItem.religionTheme,
      scale: BasiliqueEventDataItem.provinceScale,
    ),
    BasiliqueEventDataItem(
      timestamp: DateTime(437),
      text:
          "Construction d'un édifice en bois sur le tombeau de saint Martin par l'évêque Brice de Tours.",
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(470),
      text:
          "Erection de la première basilque par saint Perpet, dédicace le 4 juillet 470.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(818),
      text: "La basilique devient une collégiale.",
    ),
    BasiliqueEventDataItem(
      timestamp: DateTime(853),
      text: "Incendie.",
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.civilTheme,
    ),
    BasiliqueEventDataItem(
      timestamp: DateTime(903),
      text: "Incendie.",
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.civilTheme,
    ),
    BasiliqueEventDataItem(
      timestamp: DateTime(994),
      text: "Incendie.",
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.civilTheme,
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1003),
      text: "Début de la reconstruction par le trésorier Hervé de Buzançais.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1014),

      text: "Consécration de la nouvelle basilique",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1562),
      text: "Ravage par les protestants.",
    ),
    BasiliqueEventDataItem(
      timestamp: DateTime(1789),
      text: "Prise de la Bastille",
      isImportant: false,
      theme: BasiliqueEventDataItem.civilTheme,
      scale: BasiliqueEventDataItem.nationScale,
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1789),
      text: "La basilique devient une église paroissiale.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1797),
      text: "La voûte s'effondre.",
    ),
    BasiliqueEventDataItem(
      timestamp: DateTime(1799, 11, 9),
      text:
          "Coup d'Etat du 18 Brumaire qui porte Napoléon Bonaparte Premier consul.",
      isImportant: false,
      theme: BasiliqueEventDataItem.civilTheme,
      scale: BasiliqueEventDataItem.nationScale,
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.civilTheme,
      timestamp: DateTime(1802),
      text:
          "Le préfet Pommereul de 1800 à 1805 fait détruire la collégiale et percer la rue des Halles à l'emplacement de la nef, ne conservant que la tour Charlemagne et la tour de l'horloge.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1860),
      text:
          "Redécouverte du tombeau de saint Martin par Léon Papin-Dupont, aidé par Stanislas Ratel et le comte Pèdre Moisant.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.civilTheme,
      timestamp: DateTime(1884),
      text:
          "Compromis entre la municipalité et l'archevêché sur la construction d'un bâtiment ne partageant avec l'ancien que l'emplacement de l'ancien chevet au-dessus du tombeau de saint Martin.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.nationScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1885),
      text:
          "Le gouvernement autorisé la construction d'une chapelle de secours.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.civilTheme,
      timestamp: DateTime(1886),
      text: "Les fouilles ont lieu et les travaux commencent.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1889),
      text: "Inauguration de la crypte et du tombeau.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1890),
      text: "Inauguration de l'église.",
    ),
    BasiliqueEventDataItem(
      isImportant: true,
      scale: BasiliqueEventDataItem.nationScale,
      theme: BasiliqueEventDataItem.religionTheme,
      timestamp: DateTime(1925),
      text: "Le cardinal Maurin consacre l'édifice en basilique mineure.",
    ),
  ];

  Map<String, dynamic> toJson() {
    return {"timeline": data.map((item) => item.toJson()).toList()};
  }


}

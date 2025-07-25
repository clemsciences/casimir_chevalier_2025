import 'package:casimir_chevalier_2025/models/timeline/basilique_event_data_item.dart';
import 'package:historical_timeline/historical_timeline.dart';

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
      isImportant: false,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.civilTheme,
    ),
    BasiliqueEventDataItem(
      timestamp: DateTime(905),
      text: "Incendie.",
      isImportant: false,
      scale: BasiliqueEventDataItem.cityScale,
      theme: BasiliqueEventDataItem.civilTheme,
    ),
    BasiliqueEventDataItem(
      timestamp: DateTime(994),
      text: "Incendie.",
      isImportant: false,
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
      timestamp: DateTime(1799, 11, 9),
      text:
          "Coup d'Etat du 18 Brumaire qui porte Népoléon Bonaparte Premier consul.",
      isImportant: false,
      theme: BasiliqueEventDataItem.civilTheme,
      scale: BasiliqueEventDataItem.nationScale,
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
          "Coup d'Etat du 18 Brumaire qui porte Népoléon Bonaparte Premier consul.",
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
  final List<TimelineItem> targetData = [
    TimelineItem(
      text: "Martin devient évêque de Tours",
      label: "",
      precision: DatetimePrecision.year(),
      timestamp: DateTime(371, 7, 4),
    ),
    TimelineItem(
      text: "Martin meurt à Candes.",
      label: "",
      precision: DatetimePrecision.year(),
      timestamp: DateTime(397),
    ),
    TimelineItem(
      timestamp: DateTime(437),
      precision: DatetimePrecision.year(),
      text:
          "Construction d'un édifice en bois sur le tombeau de saint Martin par l'évêque Brice de Tours.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(470),
      precision: DatetimePrecision.year(),
      text:
          "Erection de la première basilique par saint Perpet, dédicace le 4 juillet 470.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(818),
      precision: DatetimePrecision.year(),
      text: "La basilique devient une collégiale.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(853),
      precision: DatetimePrecision.year(),
      text: "Incendie.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(905),
      precision: DatetimePrecision.year(),
      text: "Incendie.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(994),
      precision: DatetimePrecision.year(),
      text: "Incendie.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1003),
      precision: DatetimePrecision.year(),
      text: "Début de la reconstruction par le trésorier Hervé de Buzançais.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1014),
      precision: DatetimePrecision.year(),
      text: "Consécration de la nouvelle basilique",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1562),
      precision: DatetimePrecision.year(),
      text: "Ravage par les protestants.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1789),
      precision: DatetimePrecision.year(),
      text: "La basilique devient une église paroissiale.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1797),
      precision: DatetimePrecision.year(),
      text: "La voûte s'effondre.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1802),
      precision: DatetimePrecision.year(),
      text:
          "Le préfet Pommereul de 1800 à 1805 fait détruire la collégiale et percer la rue des Halles à l'emplacement de la nef, ne conservant que la tour Charlemagne et la tour de l'horloge.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1860),
      precision: DatetimePrecision.year(),
      text:
          "Redécouverte du tombeau de saint Martin par Léon Papin-Dupont, aidé par Stanislas Ratel et le comte Pèdre Moisant.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1884),
      precision: DatetimePrecision.year(),
      text:
          "Compromis entre la municipalité et l'archevêché sur la constrction d'un bâtiment ne partageant avec l'ancien que l'emplacement de l'ancien chevet au-dessus du tombeau de saint Martin.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1885),
      precision: DatetimePrecision.year(),
      text: "Le gouvernement autorisé la constrctin d'une chapelle de secours.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1886),
      precision: DatetimePrecision.year(),
      text: "Les fouilles ont lieu et les travaux commencent.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1889),
      precision: DatetimePrecision.year(),
      text: "Inauguration de la crypte et du tombeau.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1890),
      precision: DatetimePrecision.year(),
      text: "Inauguration de l'église.",
      label: "",
    ),
    TimelineItem(
      timestamp: DateTime(1925),
      precision: DatetimePrecision.year(),
      text: "Le cardinal Maurin consacre l'édifice en basilique mineure.",
      label: "",
    ),
  ];
}

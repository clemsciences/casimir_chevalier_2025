import 'package:casimir_chevalier_2025/models/entities/miscellaneous.dart';

class MiscellaneousData {
  List<Miscellaneous> data = [
    // définition trop générale : "Un magazine départemental est un magazine publié par un conseil départemental sur le territoire du département. Il informe la population des décisions votées par l'assemblée départementale."
    Miscellaneous(
      name: "Journal du Département",
      description: "",
      chapterCited: [2, 3, 7, 9, 13],
    ),
    Miscellaneous(
      name: "Académie Française",
      description:
          "L'Académie française est une institution dont la mission est de normaliser et de perfectionner la langue française. Elle est composée de quarante membres élus par leurs pairs.",
      chapterCited: [2],
      urls: ["https://www.academie-francaise.fr/"],
    ),
    Miscellaneous(
      name: "croix de Saint-Louis",
      description:
          "La croix de Saint-Louis est une décoration militaire française créée en 1693 par Louis XIV. Elle récompense les officiers pour leur bravoure et leur service fidèle.",
      chapterCited: [3],
      urls: ["https://www.saint-louis.info/"],
    ),
    Miscellaneous(
      name: "Légion d'honneur",
      description:
          "La Légion d'honneur est la plus haute distinction honorifique française. Elle a été créée par Napoléon Bonaparte en 1802 pour récompenser les services militaires et civils exceptionnels.",
      chapterCited: [3],
      urls: ["https://www.legiondhonneur.fr/fr"],
    ),
    // ça m'a parlé de saint Basile.
    Miscellaneous(
      name: "Basiliciens",
      description:
          "Les Basiliciens étaient les partisans de la basilique Saint-Martin reconstruite comme à l'époque où elle était la plus développée",
      chapterCited: [3, 7, 8, 9, 10],
    ),
    // Utilisation de la première définition alors que c'était la deuxième qui était valide.
    Miscellaneous(
      name: "Ouvroir",
      description:
          "Atelier, souvent à caractère confessionnel, où des personnes bénévoles effectuent des travaux d'aiguille pour des ornements d'église ou au profit d'une oeuvre de bienfaisance, d'un hôpital ou de nécessiteux.",
      chapterCited: [3, 5, 6, 9, 11, 13],
      urls: null,
    ),
    // hallucination : "Le Chalet Républicain est un lieu symbolique ou un bâtiment associé à des valeurs républicaines, souvent utilisé pour des réunions ou des événements publics."
    Miscellaneous(
      name: "Chalet Républicain",
      description:
          "C'est le nom donné à l'église plus modeste qu'espérée par certains qui sera reconstruite.",
      chapterCited: [5, 6, 7, 8, 9, 10],
    ),
    // Miscellaneous(
    //   name: "Conseil Républicain",
    //   description:
    //       "Le Conseil Républicain est une assemblée ou un groupe de personnes qui se réunissent pour discuter et promouvoir les valeurs et les principes de la République.",
    // ),
    Miscellaneous(
      name: "Jésuites",
      description:
          "Les Jésuites sont les membres de la Compagnie de Jésus, une congrégation religieuse catholique fondé par Saint Ignace de Loyola en 1540. Ils sont connus pour leur travail dans l'éducation et la mission.",
      chapterCited: [2, 4, 8, 10],
    ),
    Miscellaneous(
      name: "Saint-Cyr",
      description:
          "Saint-Cyr est une école militaire française fondée en 1802 par Napoléon Bonaparte. Elle forme les officiers de l'armée de terre française.",
      chapterCited: [7],
    ),
    Miscellaneous(
      name: "Ordre de Picpus",
      description:
          "L'Ordre de Picpus, ou Congrégation des Sacrés-Cœurs de Jésus et de Marie, est un ordre religieux catholique fondé en 1800 à Poitiers. Il est connu pour son travail missionnaire et éducatif. Il prend le nom de la rue de Picpus à Paris où se trouvait la maison-mère de l'ordre.",
      chapterCited: [7],
    ),
    Miscellaneous(
      name: "Confrérie du Tiers-Ordre de Saint-François",
      description:
          "La Confrérie du Tiers-Ordre de Saint-François est une association de laïcs qui suivent la spiritualité de Saint François d'Assise. Ils vivent selon les principes franciscains tout en restant dans le monde.",
      chapterCited: [10, 13],
    ),
    Miscellaneous(
      name: "la société de Saint-Vincent de Paul",
      description: "",
      chapterCited: [13],
    ),
    Miscellaneous(
      name: "Menier",
      description:
          "Menier est une famille française connue pour son entreprise de chocolat fondée au XIXe siècle. La famille Menier a joué un rôle important dans l'industrie chocolatière française. La famille est aussi le propriétaire de Chenonceau depuis 1853.",
      chapterCited: [15],
    ),
    Miscellaneous(
      name: "San-Miniato de Florence",
      description:
          "San-Miniato de Florence est une basilique située à Florence, en Italie. Elle est connue pour son architecture romane et ses fresques médiévales.",
      chapterCited: [15],
    ),
    // Miscellaneous(
    //   name: "Cour d'assises",
    //   description:
    //       "La Cour d'assises est une juridiction française compétente pour juger les crimes. Elle est composée de magistrats professionnels et de jurés tirés au sort.",
    // ),
    Miscellaneous(
      name: "Sancto Martino",
      description: "Sancto Martino singifie \"à saint-Martin\".",
      chapterCited: [3],
    ),
    Miscellaneous(
      name: "Adoration Perpétuelle",
      description:
          "L'Adoration Perpétuelle est une pratique religieuse catholique où les fidèles adorent le Saint-Sacrement de manière continue, jour et nuit.",
      chapterCited: [3, 7],
    ),
    Miscellaneous(
      name: "Petit Journal",
      description:
          "Le Petit Journal est un ancien quotidien français fondé en 1863. Il était connu pour ses illustrations et ses articles accessibles à un large public.",
      chapterCited: [15],
    ),
    // Miscellaneous(
    //   name: "Cheval blanc",
    //   description:
    //       "Le Cheval blanc est un symbole souvent associé à la pureté et à la victoire. Il peut également désigner un lieu ou une enseigne.",
    // ),
    // Miscellaneous(
    //   name: "La Lant",
    //   description:
    //       "La Lant est un terme qui peut désigner un lieu ou une propriété. Il est souvent associé à des domaines ruraux ou à des résidences de campagne.",
    // ),
    Miscellaneous(
      name: "Ciborium",
      description:
          "Un ciborium est un récipient utilisé dans la liturgie catholique pour conserver les hosties consacrées. Il est souvent en métal précieux et décoré.",
      chapterCited: [15],
    ),
    Miscellaneous(
      name: "congrégation de la Sainte Vierge",
      description:
          "La congrégation de la Sainte Vierge est une association de fidèles dédiée à la vénération de la Vierge Marie. Elle peut être composée de laïcs ou de religieux.",
      chapterCited: [10],
    ),
    Miscellaneous(
      name: "tilbury",
      description:
          "Le tilbury est une voiture hippomobile légère, de type cabriolet, à deux roues, ouverte, à capote (parfois sans), inventée en 1815 en Angleterre. Elle porte le nom du carrossier qui l'a mise au point. Voir https://fr.wikipedia.org/wiki/Tilbury_(hippomobile).",
      chapterCited: [15, 16],
    ),
    Miscellaneous(
      name: "acide arsénieux",
      description:
          "Un composé d'arsenic utilisé au XIXe siècle pour traiter les caries mais abandonné ensuite en raison de sa toxicité. Voir https://fr.wikipedia.org/wiki/Acide_m%C3%A9taars%C3%A9nieux.",
      chapterCited: [15],
    ),
    Miscellaneous(
      name: "Atala",
      description:
          "\"Atala, ou Les Amours de deux sauvages dans le désert\" est un roman de François-René de Chateaubriand.",
      chapterCited: [2],
    ),
    Miscellaneous(
      name: "René",
      description: "Roman de François-René de Chateaubriand",
      chapterCited: [2],
    ),
    Miscellaneous(
      name: "Dames Delignac",
      description: "Pensionnat",
      chapterCited: [7],
    ),
  ];

  Map<String, dynamic> toJson() {
    return {"miscellaneous": data.map((item) => item.toJson()).toList()};
  }
}

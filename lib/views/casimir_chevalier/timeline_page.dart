import 'package:casimir_chevalier_2025/style/style.dart';
import 'package:casimir_chevalier_2025/views/casimir_chevalier/buttons/print_map_button.dart';
import 'package:casimir_chevalier_2025/views/casimir_chevalier/buttons/print_map_button/print_map_button.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:historical_timeline/historical_timeline.dart';

///
///
/// Chronologie plus détaillée à partir du XVIe siècle.
/// https://gallica.bnf.fr/ark:/12148/bpt6k6543810k/f189.item.r=cloque
///
///
class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    // var padding = MediaQuery.of(context).viewInsets;
    var size = MediaQuery.of(context).size;
    var timelineKey = GlobalKey();
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        context.pop();
      },
      child: MainCasimirScaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [SatStyle.softRedColor, SatStyle.softDarkBlueColor],
            ),
          ),
          child: Container(
            // padding: padding,
            // height: size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    // height: 0.1 * size.height,
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: SelectableText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Chronologie de la basilique Saint-Martin",
                              style: Theme.of(context).textTheme.displayLarge
                            ),
                            TextSpan(
                              text: "\nd'aujourd'hui à nos jours",
                              style: Theme.of(
                                context,
                              ).textTheme.displayLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  if(kDebugMode)
                  Center(child: LayoutBuilder(builder: (context, constraints) => Container(
                      width: constraints.maxWidth > 200 ? 200 : constraints.maxWidth,
                      child: PrintMapButton(opener: MyOpener(), interestKey: timelineKey,)))),
                  Expanded(
                    child: RepaintBoundary(
                      key: timelineKey,
                      child: HistoricalTimeline(
                        timelineAppearance: TimelineAppearance.cards,
                        direction: TimelineDirection.horizontal,
                        size: Size(300, 300),
                        endMargin: 50,
                        startMargin: 50,
                        events: [
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
                            text:
                                "Début de la reconstruction par le trésorier Hervé de Buzançais.",
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
                            text:
                                "Le gouvernement autorisé la constrctin d'une chapelle de secours.",
                            label: "",
                          ),
                          TimelineItem(
                            timestamp: DateTime(1886),
                            precision: DatetimePrecision.year(),
                            text:
                                "Les fouilles ont lieu et les travaux commencent.",
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
                            text:
                                "Le cardinal Maurin consacre l'édifice en basilique mineure.",
                            label: "",
                          ),
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

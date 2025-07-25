import 'package:casimir_chevalier_2025/data/basilique_event_data.dart';
import 'package:casimir_chevalier_2025/models/timeline/basilique_event_data_item.dart';
import 'package:casimir_chevalier_2025/models/timeline/timeline_filter.dart';
import 'package:casimir_chevalier_2025/style/backgournd/timeline_background.dart';
import 'package:casimir_chevalier_2025/views/buttons/print_map_button.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:historical_timeline/historical_timeline.dart';

import 'buttons/print_map_button/print_map_button.dart';

///
///
/// Chronologie plus détaillée à partir du XVIe siècle.
/// https://gallica.bnf.fr/ark:/12148/bpt6k6543810k/f189.item.r=cloque
///
///
class TimelinePage extends StatefulWidget {
  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  TimelineFilter filter = TimelineFilter(
    isImportant: true,
    scale: [
      BasiliqueEventDataItem.nationScale,
      BasiliqueEventDataItem.cityScale,
      BasiliqueEventDataItem.provinceScale,
    ],
    theme: [
      BasiliqueEventDataItem.religionTheme,
      BasiliqueEventDataItem.civilTheme,
    ],
  );

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
        body: TimelineBackground(
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
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          TextSpan(
                            text: "\nd'aujourd'hui à nos jours",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                if (kDebugMode)
                  Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) => Container(
                        width: constraints.maxWidth > 200
                            ? 200
                            : constraints.maxWidth,
                        child: PrintMapButton(
                          opener: MyOpener(),
                          interestKey: timelineKey,
                        ),
                      ),
                    ),
                  ),
                Center(
                  child: LayoutBuilder(
                    builder: (context, constraints) => Container(
                      height: 200,
                      width: constraints.maxWidth,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 150,
                            child: ListTile(
                              title: Text("Importance"),
                              leading: Checkbox(
                                value: filter.isImportant,
                                onChanged: (value) {
                                  setState(() {
                                    filter = filter.switchImportance();
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: ListTile(
                              title: Text("Ville"),
                              leading: Checkbox(
                                value: filter.containsScale(
                                  BasiliqueEventDataItem.cityScale,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    if (value != null) {
                                      if (value) {
                                        filter = filter.addScale(
                                          BasiliqueEventDataItem.cityScale,
                                        );
                                      } else {
                                        filter = filter.removeScale(
                                          BasiliqueEventDataItem.cityScale,
                                        );
                                      }
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: ListTile(
                              title: Text("Province"),
                              leading: Checkbox(
                                value: filter.containsScale(
                                  BasiliqueEventDataItem.provinceScale,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    if (value != null) {
                                      if (value) {
                                        filter = filter.addScale(
                                          BasiliqueEventDataItem.provinceScale,
                                        );
                                      } else {
                                        filter = filter.removeScale(
                                          BasiliqueEventDataItem.provinceScale,
                                        );
                                      }
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: ListTile(
                              title: Text("Nation"),
                              leading: Checkbox(
                                value: filter.containsScale(
                                  BasiliqueEventDataItem.nationScale,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    if (value != null) {
                                      if (value) {
                                        filter = filter.addScale(
                                          BasiliqueEventDataItem.nationScale,
                                        );
                                      } else {
                                        filter = filter.removeScale(
                                          BasiliqueEventDataItem.nationScale,
                                        );
                                      }
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: ListTile(
                              title: Text("Religieux"),
                              leading: Checkbox(
                                value: filter.containsTheme(
                                  BasiliqueEventDataItem.religionTheme,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    if (value != null) {
                                      if (value) {
                                        filter = filter.addTheme(
                                          BasiliqueEventDataItem.religionTheme,
                                        );
                                      } else {
                                        filter = filter.removeTheme(
                                          BasiliqueEventDataItem.religionTheme,
                                        );
                                      }
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: ListTile(
                              title: Text("Civil"),
                              leading: Checkbox(
                                value: filter.containsTheme(
                                  BasiliqueEventDataItem.civilTheme,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    if (value != null) {
                                      if (value) {
                                        filter = filter.addTheme(
                                          BasiliqueEventDataItem.civilTheme,
                                        );
                                      } else {
                                        filter = filter.removeTheme(
                                          BasiliqueEventDataItem.civilTheme,
                                        );
                                      }
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: RepaintBoundary(
                    key: timelineKey,
                    child: HistoricalTimeline(
                      timelineAppearance: TimelineAppearance.cards,
                      direction: TimelineDirection.horizontal,
                      size: Size(300, 300),
                      endMargin: 50,
                      startMargin: 50,
                      filterBool1: filter.isImportant,
                      // filterString1: filter.theme,
                      filterListString1: filter.theme,
                      filterListString2: filter.scale,
                      events: BasiliqueEventData().data
                          .map((item) => item.toBasiliqueItem())
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

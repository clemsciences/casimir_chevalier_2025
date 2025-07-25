import 'package:historical_timeline/historical_timeline.dart';

class BasiliqueEventDataItem {
  static const String religionTheme = "religion";
  static const String civilTheme = "civil";

  static const String nationScale = "nation";
  static const String provinceScale = "province";
  static const String cityScale = "city";


  final DateTime timestamp;
  final String text;
  final bool isImportant;
  final String theme;
  final String scale;

  BasiliqueEventDataItem({required this.timestamp, required this.text, required this.isImportant, required this.theme, required this.scale});


  TimelineItem toBasiliqueItem() {
    return TimelineItem(timestamp: timestamp, precision: DatetimePrecision.year(), text: text, label: "", bool1: isImportant, string1: theme, string2: scale);
  }

}
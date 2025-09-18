// import 'package:historical_timeline/historical_timeline.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basilique_event_data_item.g.dart';

@JsonSerializable()
class BasiliqueEventDataItem {
  static const String religionTheme = "religion";
  static const String civilTheme = "civil";

  static const String nationScale = "nation";
  static const String provinceScale = "province";
  static const String cityScale = "city";

  static const String timestampKey = 'timestamp';
  static const String textKey = 'text';
  static const String isImportantKey = 'isImportant';
  static const String themeKey = 'theme';
  static const String scaleKey = 'scale';

  @JsonKey(name: timestampKey)
  final DateTime timestamp;
  @JsonKey(name: textKey)
  final String text;
  @JsonKey(name: isImportantKey)
  final bool isImportant;
  @JsonKey(name: themeKey)
  final String theme;
  @JsonKey(name: scaleKey)
  final String scale;

  BasiliqueEventDataItem({
    required this.timestamp,
    required this.text,
    required this.isImportant,
    required this.theme,
    required this.scale,
  });

  fromJson(Map<String, dynamic> json) => _$BasiliqueEventDataItemFromJson(json);

  Map<String, dynamic> toJson() => _$BasiliqueEventDataItemToJson(this);
}

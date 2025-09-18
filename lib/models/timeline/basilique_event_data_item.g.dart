// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basilique_event_data_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasiliqueEventDataItem _$BasiliqueEventDataItemFromJson(
  Map<String, dynamic> json,
) => BasiliqueEventDataItem(
  timestamp: DateTime.parse(json['timestamp'] as String),
  text: json['text'] as String,
  isImportant: json['isImportant'] as bool,
  theme: json['theme'] as String,
  scale: json['scale'] as String,
);

Map<String, dynamic> _$BasiliqueEventDataItemToJson(
  BasiliqueEventDataItem instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp.toIso8601String(),
  'text': instance.text,
  'isImportant': instance.isImportant,
  'theme': instance.theme,
  'scale': instance.scale,
};

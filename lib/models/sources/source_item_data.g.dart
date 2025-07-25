// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceItemData _$SourceItemDataFromJson(Map<String, dynamic> json) =>
    SourceItemData(
      title: json['title'] as String,
      url: json['url'] as String?,
      publisher: json['publisher'] as String?,
      date: json['date'] == null
          ? null
          : DateTime.parse(json['date'] as String),
      id: json['id'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$SourceItemDataToJson(SourceItemData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'publisher': instance.publisher,
      'date': SourceItemData.dateToJson(instance.date),
      'id': instance.id,
      'description': instance.description,
    };

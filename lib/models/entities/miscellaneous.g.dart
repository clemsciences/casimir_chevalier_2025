// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miscellaneous.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Miscellaneous _$MiscellaneousFromJson(Map<String, dynamic> json) =>
    Miscellaneous(
      name: json['name'] as String,
      description: json['description'] as String?,
      chapterCited: (json['chapterCited'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      urls: (json['urls'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MiscellaneousToJson(Miscellaneous instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'chapterCited': instance.chapterCited,
      'urls': instance.urls,
    };

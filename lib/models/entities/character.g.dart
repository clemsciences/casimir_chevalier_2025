// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
  name: json['name'] as String,
  firstName: json['first_name'] as String?,
  title: json['title'] as String?,
  aliases: (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
  description: json['description'] as String,
  chapterCited: (json['chapter_cited'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  url: json['url'] as String?,
  nationality: json['nationality'] as String?,
  isFictional: json['is_fictional'] as bool,
  birthDate: json['birth_date'] == null
      ? null
      : DateTime.parse(json['birth_date'] as String),
  birthPlace: json['birth_place'] as String?,
);

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
  'name': instance.name,
  'first_name': instance.firstName,
  'title': instance.title,
  'aliases': instance.aliases,
  'description': instance.description,
  'chapter_cited': instance.chapterCited,
  'nationality': instance.nationality,
  'url': instance.url,
  'is_fictional': instance.isFictional,
  'birth_date': instance.birthDate?.toIso8601String(),
  'birth_place': instance.birthPlace,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
  name: json['name'] as String,
  longitude: (json['longitude'] as num?)?.toDouble(),
  latitude: (json['latitude'] as num?)?.toDouble(),
  description: json['description'] as String?,
  scale: $enumDecode(_$LocationScaleEnumMap, json['scale']),
  link: json['link'] == null
      ? null
      : Location.fromJson(json['link'] as Map<String, dynamic>),
  url: json['url'] as String?,
);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'name': instance.name,
  'longitude': instance.longitude,
  'latitude': instance.latitude,
  'description': instance.description,
  'scale': _$LocationScaleEnumMap[instance.scale]!,
  'link': instance.link,
  'url': instance.url,
};

const _$LocationScaleEnumMap = {
  LocationScale.street: 'street',
  LocationScale.city: 'city',
  LocationScale.country: 'country',
  LocationScale.region: 'region',
  LocationScale.continent: 'continent',
  LocationScale.place: 'place',
  LocationScale.river: 'river',
};

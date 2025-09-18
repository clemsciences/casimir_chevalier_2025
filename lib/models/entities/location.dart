import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonEnum()
enum LocationScale { street, city, country, region, continent, place, river }

@JsonSerializable()
class Location {
  static const String keyName = "name";
  static const String keyLongitude = "longitude";
  static const String keyLatitude = "latitude";
  static const String keyDescription = "description";
  static const String keyScale = "scale";
  static const String keyLink = "link";
  static const String keyUrl = "url";

  @JsonKey(name: keyName)
  final String name;

  @JsonKey(name: keyLongitude)
  final double? longitude;

  @JsonKey(name: keyLatitude)
  final double? latitude;

  @JsonKey(name: keyDescription)
  final String? description;

  @JsonKey(name: keyScale)
  final LocationScale scale;

  @JsonKey(name: keyLink)
  final Location? link;

  @JsonKey(name: keyUrl)
  final String? url;

  Location({
    required this.name,
    this.longitude,
    this.latitude,
    required this.description,
    required this.scale,
    this.link,
    this.url,
  });

  static Location fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  toJson() => _$LocationToJson(this);
}

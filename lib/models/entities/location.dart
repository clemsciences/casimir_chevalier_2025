import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonEnum()
enum LocationScale { street, city, country, region, continent, place, river }

@JsonSerializable()
class Location {
  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "longitude")
  final double? longitude;

  @JsonKey(name: "latitude")
  final double? latitude;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "scale")
  final LocationScale scale;

  final Location? link;

  @JsonKey(name: "url")
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

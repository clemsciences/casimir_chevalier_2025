import 'package:json_annotation/json_annotation.dart';

part 'miscellaneous.g.dart';

@JsonSerializable()
class Miscellaneous {
  static const String nameKey = "name";
  static const String descriptionKey = "description";
  static const String chapterCitedKey = "chapterCited";
  static const String urlsKey = "urls";

  @JsonKey(name: nameKey)
  final String name;

  @JsonKey(name: descriptionKey)
  final String? description;

  @JsonKey(name: chapterCitedKey)
  final List<int> chapterCited;

  @JsonKey(name: urlsKey)
  final List<String>? urls;

  Miscellaneous({required this.name, required this.description, required this.chapterCited, this.urls});

  static Miscellaneous fromJson(Map<String, dynamic> json) => _$MiscellaneousFromJson(json);
  toJson() => _$MiscellaneousToJson(this);
}

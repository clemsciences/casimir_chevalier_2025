import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  static const String nameKey = "name";
  static const String firstNameKey = "first_name";
  static const String titleKey = "title";
  static const String aliasesKey = "aliases";
  static const String descriptionKey = "description";
  static const String chapterCitedKey = "chapter_cited";
  static const String nationalityKey = "nationality";
  static const String urlKey = "url";
  static const String isFictionalKey = "is_fictional";
  static const String birthDateKey = "birth_date";
  static const String birthPlaceKey = "birth_place";

  @JsonKey(name: nameKey)
  final String name;

  @JsonKey(name: firstNameKey)
  final String? firstName;

  @JsonKey(name: titleKey)
  final String? title;

  @JsonKey(name: aliasesKey)
  final List<String> aliases;

  @JsonKey(name: descriptionKey)
  final String description;

  @JsonKey(name: chapterCitedKey)
  final List<int> chapterCited;

  @JsonKey(name: nationalityKey)
  final String? nationality;

  @JsonKey(name: urlKey)
  final String? url;

  @JsonKey(name: isFictionalKey)
  final bool isFictional;

  @JsonKey(name: birthDateKey)
  final DateTime? birthDate;

  @JsonKey(name: birthPlaceKey)
  final String? birthPlace;

  Character({
    required this.name,
    this.firstName,
    this.title,
    required this.aliases,
    required this.description,
    required this.chapterCited,
    this.url,
    this.nationality,
    required this.isFictional,
    this.birthDate,
    this.birthPlace,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}

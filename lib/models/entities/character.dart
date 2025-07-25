import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "first_name")
  final String? firstName;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "aliases")
  final List<String> aliases;

  @JsonKey(name: "description")
  final String description;

  @JsonKey(name: "chapter_cited")
  final List<int> chapterCited;

  @JsonKey(name: "nationality")
  final String? nationality;

  @JsonKey(name: "url")
  final String? url;

  @JsonKey(name: "is_fictional")
  final bool isFictional;

  @JsonKey(name: "birth_date")
  final DateTime? birthDate;

  @JsonKey(name: "birth_place")
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
}

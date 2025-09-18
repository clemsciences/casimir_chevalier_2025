import 'package:json_annotation/json_annotation.dart';

part "author.g.dart";

@JsonSerializable()
class Author {
  static const String firstNameKey = "firstName";
  static const String lastNameKey = "lastName";
  static const String titleKey = "title";
  static const String birthdayKey = "birthday";

  @JsonKey(name: firstNameKey)
  final String firstName;
  @JsonKey(name: lastNameKey)
  final String lastName;
  @JsonKey(name: titleKey)
  final String? title;
  @JsonKey(name: birthdayKey)
  final DateTime? birthday;

  Author({
    required this.firstName,
    required this.lastName,
    this.title,
    this.birthday,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

  @override
  String toString() {
    if (title != null) {
      return "$title $firstName $lastName";
    }
    if (firstName.isNotEmpty) {
      return "$firstName $lastName";
    }
    return lastName; //
  }
}

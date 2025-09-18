import 'package:casimir_chevalier_2025/models/sources/author.dart';
import 'package:json_annotation/json_annotation.dart';

part 'source_item_data.g.dart';

@JsonSerializable()
class SourceItemData {
  static const String keyTitle = "title";
  static const String keyAuthors = "authors";
  static const String keyUrl = "url";
  static const String keyPublisher = "publisher";
  static const String keyDate = "date";
  static const String keyId = "id";
  static const String keyDescription = "description";

  @JsonKey(name: keyTitle)
  final String title;

  @JsonKey(name: keyAuthors)
  final List<Author> authors;

  @JsonKey(name: keyUrl)
  final String? url;

  @JsonKey(name: keyPublisher)
  final String? publisher;

  @JsonKey(name: keyDate, toJson: dateToJson)
  final DateTime? date;

  @JsonKey(name: keyId)
  final String? id;

  @JsonKey(name: keyDescription)
  final String? description;

  SourceItemData({
    required this.title,
    required this.authors,
    this.url,
    this.publisher,
    this.date,
    this.id,
    this.description,
  });

  static dateToJson(DateTime? date) {
    if (date != null) {
      return date.toIso8601String();
    }
    return null;
  }

  Map<String, dynamic> toJson() {
    return _$SourceItemDataToJson(this);
  }

  static SourceItemData fromJson(Map<String, dynamic> json) {
    return _$SourceItemDataFromJson(json);
  }
}

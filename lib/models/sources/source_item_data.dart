import 'package:casimir_chevalier_2025/models/sources/author.dart';
import 'package:json_annotation/json_annotation.dart';

part 'source_item_data.g.dart';

@JsonSerializable()
class SourceItemData {
  @JsonKey(name: "title")
  final String title;

  @JsonKey(name: "authors")
  final List<Author> authors;

  @JsonKey(name: "url")
  final String? url;

  @JsonKey(name: "publisher")
  final String? publisher;

  @JsonKey(name: "date", toJson: dateToJson)
  final DateTime? date;

  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "description")
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

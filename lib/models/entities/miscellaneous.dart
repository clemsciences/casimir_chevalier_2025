import 'package:json_annotation/json_annotation.dart';

part 'miscellaneous.g.dart';

@JsonSerializable()
class Miscellaneous {
  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "description")
  final String? description;

  Miscellaneous({required this.name, required this.description});
}

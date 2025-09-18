import 'dart:convert';
import 'dart:io';
import 'package:args/args.dart';
import "package:casimir_chevalier_2025/data/basilique_event_data.dart";
import 'package:casimir_chevalier_2025/data/character_data.dart';
import 'package:casimir_chevalier_2025/data/location_data.dart';
import 'package:casimir_chevalier_2025/data/miscellaneous_data.dart';
import 'package:casimir_chevalier_2025/data/sources_data.dart';

void main(List<String> arguments) {
  final parser = ArgParser()..addOption('output', abbr: 'o');
  final argResults = parser.parse(arguments);

  String outputFilePath = "exports.json";
  if (argResults['output'] != null) {
    outputFilePath = argResults['output'];
  } else {
    // Use default if no arguments are provided or if --output is not used
    // This part can be adjusted based on desired behavior for positional arguments
  }
  final data = BasiliqueEventData().toJson();
  data.addAll(CharacterData().toJson());
  data.addAll(LocationData().toJson());
  data.addAll(MiscellaneousData().toJson());
  data.addAll(SourcesData().toJson());
  File(outputFilePath).writeAsStringSync(jsonEncode(data));
}
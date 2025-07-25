import 'package:casimir_chevalier_2025/models/sources/source_item_data.dart';

class SourcesData {
  List<SourceItemData> data = [

  ];

  toJson() {
    return data.map((item) => item.toJson()).toList();

  }

}
import 'package:casimir_chevalier_2025/data/location_data.dart';
import 'package:casimir_chevalier_2025/models/entities/location.dart';
import 'package:casimir_chevalier_2025/views/items/limited_item.dart';
import 'package:flutter/material.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({super.key, required this.dataItem});

  final Location dataItem;

  @override
  Widget build(BuildContext context) {
    return LimitedItem(
      child: Card(
        child: ListTile(
          title: SelectableText(dataItem.name),
        ),
      ),
    );
  }
}

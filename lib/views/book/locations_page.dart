import 'package:casimir_chevalier_2025/data/location_data.dart';
import 'package:casimir_chevalier_2025/views/items/location_item.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCasimirScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: LocationData.locations.map((dataItem) => LocationItem(dataItem: dataItem)).toList(),
        ),
      ),
    );
  }
}

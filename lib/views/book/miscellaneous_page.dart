import 'package:casimir_chevalier_2025/data/miscellaneous_data.dart';
import 'package:casimir_chevalier_2025/views/items/miscellaneous_item.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

class MiscellaneousPage extends StatelessWidget {
  const MiscellaneousPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCasimirScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Column(children: MiscellaneousData().data.map((dataItem) => MiscellaneousItem(dataItem: dataItem)).toList(),),)
          ]
        ),
      ),
    );
  }
}

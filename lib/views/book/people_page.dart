import 'package:casimir_chevalier_2025/data/character_data.dart';
import 'package:casimir_chevalier_2025/views/items/people_item.dart';
import 'package:casimir_chevalier_2025/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCasimirScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(child: Column(children:
              CharacterData().fictionalCharacters
                  .map((dataItem) => PeopleItem(dataItem: dataItem))
                  .toList(),),),
            ),
            Center(
              child: Column(
                children: CharacterData().existingCharacters
                    .map((dataItem) => PeopleItem(dataItem: dataItem))
                    .toList(),
              ),
            ),
  ]
        ),
      ),
    );
  }
}

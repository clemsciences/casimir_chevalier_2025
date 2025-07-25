import 'package:casimir_chevalier_2025/models/entities/character.dart';
import 'package:casimir_chevalier_2025/views/items/limited_item.dart';
import 'package:flutter/material.dart';

class PeopleItem extends StatelessWidget {
  const PeopleItem({super.key, required this.dataItem});

  final Character dataItem;

  @override
  Widget build(BuildContext context) {
    return LimitedItem(
      child: Card(
        child: ListTile(
          title: SelectableText.rich(
            TextSpan(
              children: [
                if(dataItem.title != null)
                  TextSpan(text: dataItem.title),
                if (dataItem.firstName != null)
                  TextSpan(text: dataItem.firstName),
                TextSpan(text: dataItem.name),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

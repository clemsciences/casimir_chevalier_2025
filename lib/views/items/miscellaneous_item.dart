

import 'package:casimir_chevalier_2025/models/entities/miscellaneous.dart';
import 'package:casimir_chevalier_2025/views/items/limited_item.dart';
import 'package:flutter/material.dart';

class MiscellaneousItem extends StatelessWidget {
  const MiscellaneousItem({super.key, required this.dataItem});

  final Miscellaneous dataItem;

  @override
  Widget build(BuildContext context) {
    return LimitedItem(
      child: Card(
        child: ListTile(
          title: SelectableText(dataItem.name),
          subtitle: dataItem.description != null ? SelectableText(dataItem.description!) : null,
        ),
      ),
    );
  }
}

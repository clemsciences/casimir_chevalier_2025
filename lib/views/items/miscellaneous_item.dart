import 'package:casimir_chevalier_2025/models/entities/miscellaneous.dart';
import 'package:casimir_chevalier_2025/style/style.dart';
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
          title: SelectableText.rich(TextSpan(text: dataItem.name, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold))),
          subtitle:

          dataItem.description != null ? SelectableText.rich(
              TextSpan(children: [
                TextSpan(text: dataItem.description!),
                if(dataItem.urls != null)
                  ...dataItem.urls!
                      .map((url) =>
                      TextSpan(text: "\n$url", style: SatStyle.textLinkStyle))


              ])) : null,
        ),
      ),
    );
  }
}

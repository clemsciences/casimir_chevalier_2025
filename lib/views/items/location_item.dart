import 'package:casimir_chevalier_2025/models/entities/location.dart';
import 'package:casimir_chevalier_2025/style/style.dart';
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
          title: SelectableText.rich(
            TextSpan(text: dataItem.name),
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: SelectableText.rich(
            TextSpan(
              children: [
                TextSpan(text: dataItem.description),
                if (dataItem.url?.isNotEmpty ?? false)
                  TextSpan(text: dataItem.url, style: SatStyle.textLinkStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

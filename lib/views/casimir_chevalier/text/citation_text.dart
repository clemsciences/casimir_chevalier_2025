import 'package:flutter/material.dart';

class CitationText extends StatelessWidget {
  const CitationText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxWidth > 400 ? size.width * 0.7 : constraints.maxWidth,
          padding: const EdgeInsets.all(16.0),
          child: SelectableText.rich(
            TextSpan(
              text: text,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}

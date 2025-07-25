import 'package:flutter/material.dart';

class SourceHeading extends StatelessWidget {
  const SourceHeading({super.key});

  final String text = "";

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(TextSpan(text: text, style: Theme.of(context).textTheme.displayLarge));
  }
}

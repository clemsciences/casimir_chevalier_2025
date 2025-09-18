import 'package:casimir_chevalier_2025/style/style.dart';
import 'package:flutter/material.dart';

class ParagraphTextSpan extends TextSpan {
  final String context;

  ParagraphTextSpan({required this.context})
    : super(text: context, style: SatStyle.paragraphStyle);

  factory ParagraphTextSpan.newParagraph() => ParagraphTextSpan(context: "\n\n");
}

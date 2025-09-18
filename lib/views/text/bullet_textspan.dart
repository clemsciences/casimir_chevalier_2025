import 'package:flutter/material.dart';

class BulletTextSpan extends TextSpan {

  final String content;

  BulletTextSpan({required this.content})
    : super(
    text: "\n\u2022 $content",
        /*children: [
          //TextSpan(text: "\n\u2022 "),
          TextSpan(text: content),
        ],*/
      );
}

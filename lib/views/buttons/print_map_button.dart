
import "dart:typed_data";
import "dart:ui";

import "package:casimir_chevalier_2025/views/buttons/print_map_button/opener.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class PrintMapButton extends StatelessWidget {
  final GlobalKey interestKey;
  final Opener opener;

  const PrintMapButton({super.key, required this.interestKey, required this.opener});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          var i = await captureWidgetAsImage(interestKey);
          if (i != null && context.mounted) {
            opener.openImage(i);
          }
        },
        child: const Text("Imprimer"));
  }

  Future<Uint8List?> captureWidgetAsImage(GlobalKey widgetKey) async {
    RenderRepaintBoundary? boundary =
        widgetKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) return null;

    final image = await boundary.toImage(pixelRatio: MediaQuery.of(interestKey.currentContext!).devicePixelRatio);
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }
}


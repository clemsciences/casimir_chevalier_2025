import "dart:js_interop" as js;
import "dart:typed_data";

import "package:casimir_chevalier_2025/views/buttons/print_map_button/opener.dart";
import "package:web/web.dart" as web;

class MyOpener implements Opener {
  void openImage(Uint8List imageBytes) {
    final blob = web.Blob(
      [imageBytes] as js.JSArray<web.BlobPart>,
      web.BlobPropertyBag(type: "image/png"),
    );
    final url = web.URL.createObjectURL(blob);
    web.window.open(url, "_blank");
  }
}

import 'package:universal_html/html.dart';
import 'dart:convert';

Future<void> saveAndLaunchFile(List<int> bytes, String filename) async {
  AnchorElement(
      href:
          "data:applicaction/octet-stream;charset-utf-16le;base64,${base64.encode(bytes)}")
    ..setAttribute("download", filename)
    ..click();
}

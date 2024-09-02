import 'package:flutter/services.dart';
import 'package:maphero/maphero.dart';

/// Adds an asset image to the currently displayed style
Future<void> addImageFromAsset(
    MapHeroMapController controller, String name, String assetName) async {
  final bytes = await rootBundle.load(assetName);
  final list = bytes.buffer.asUint8List();
  return controller.addImage(name, list);
}

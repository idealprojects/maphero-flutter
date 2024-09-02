part of '../maphero_web.dart';

class MapHeroMapPlugin {
  /// Registers this class as the default instance of [MapHeroPlatform].
  static void registerWith(Registrar registrar) {
    MapHeroPlatform.createInstance = () => MapHeroMapController();
  }
}

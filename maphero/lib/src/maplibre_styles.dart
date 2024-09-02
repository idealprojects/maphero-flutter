part of '../maphero.dart';

@Deprecated('MapheroStyles was renamed to MapHeroStyles.')
typedef MapheroStyles = MapHeroStyles;

/// MapLibre styles used mostly for demonstration.
abstract class MapHeroStyles {
  /// A very simple MapLibre demo style that shows only countries with their
  /// boundaries.
  static const String demo = "https://demotiles.maplibre.org/style.json";
}
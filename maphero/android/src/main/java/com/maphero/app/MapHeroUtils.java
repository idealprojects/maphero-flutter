package com.maphero.app;

import android.content.Context;
import org.maplibre.android.MapLibre;

abstract class MapHeroUtils {
  private static final String TAG = "MapHeroMapController";

  static MapLibre getMapLibre(Context context) {
    return MapLibre.getInstance(context);
  }
}

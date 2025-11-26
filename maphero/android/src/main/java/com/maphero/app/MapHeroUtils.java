package com.maphero.app;

import android.content.Context;

import org.maphero.android.MapHero;

abstract class MapHeroUtils {
  private static final String TAG = "MapHeroMapController";

  static MapHero getMapHero(Context context) {
    return MapHero.getInstance(context);
  }
}

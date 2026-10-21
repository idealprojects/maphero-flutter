package com.maphero.app;

import android.content.Context;

import org.maphero.android.MapHero;
import org.maphero.android.WellKnownTileServer;

abstract class MapHeroUtils {
  private static final String TAG = "MapHeroMapController";

  /** The key the app gave us, kept so later calls never initialise the SDK without it. */
  private static volatile String apiKey;

  /**
   * Initialises the SDK with the app's API key, which the SDK then sends as X-API-Key on every
   * request. The one-argument {@code MapHero.getInstance(context)} clears the key on the shared
   * instance, so it is only used when the app has not given one.
   */
  static MapHero getMapHero(Context context) {
    String key = apiKey;
    if (key != null) {
      return MapHero.getInstance(context, key, WellKnownTileServer.MapHero);
    }
    return MapHero.getInstance(context);
  }

  static MapHero setApiKey(Context context, String key) {
    apiKey = (key == null || key.trim().isEmpty()) ? null : key.trim();
    return getMapHero(context);
  }
}

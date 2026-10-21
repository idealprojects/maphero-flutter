## 1.3.0
  The API key is now sent as `X-API-Key`. Passing `token` to `MapHeroMap` (or calling the new top-level `setApiKey`) is the whole setup: the key goes to each native SDK's own setter, which puts `X-API-Key` on every request the map makes, with the app's identity beside it (`X-MapHero-Android-Package` on Android, `X-MapHero-Ios-Bundle` on iOS) for keys restricted to named apps. `setHttpHeaders` is no longer needed for authentication.
  - Android: `io.maphero:android-sdk` 1.1.0 → 1.3.0, which needs Android 6.0: the plugin's `minSdkVersion` is now 23 (an app below 23 would fail its manifest merge). The plugin also stops re-initialising the SDK with the one-argument `MapHero.getInstance(context)` on every map and every plugin call, which cleared the key on the shared instance.
  - iOS: the key is set through `MHSettings.apiKey` before the map view is created (the vendored framework is now MapHero iOS 1.3.3). `setHttpHeaders` now merges into the SDK's session headers instead of replacing the whole configuration.
  - Security: the Android plugin no longer writes HTTP header values — the API key among them — to logcat.
  - `import 'package:maphero_gl/maphero_gl.dart';` now works, alongside the existing `maphero.dart`.

## 1.2.2
  Update the Android MapHero SDK to `io.maphero:android-sdk:1.1.0`. This build renames the native library to `libmaphero.so` (so it no longer collides with an upstream `libmaplibre.so` in the same app) and sends the API key as the `map-token` HTTP header on tile/resource requests. No API changes — the Android package (`org.maphero.android`) and classes are unchanged, so it is a drop-in update. iOS is unaffected (it uses the `MapHero.xcframework`, not a `.so`) and stays on the 1.2.1 framework.

## 1.2.1
  Update the iOS MapHero SDK to 1.2.1. Renames the SDK name string from "MapLibre Native iOS" to "MapHero Native iOS" (a resource the earlier rename had missed). Carries forward the 1.2.0 fixes. Vendored as an XCFramework (device + simulator slices) from the maphero-native 1.2.1 release.

## 1.2.0
  Update the iOS MapHero SDK to 1.2.0. Fixes the broken class rename so `MHPointFeature`/`MHPointFeatureCluster` are exported correctly — 1.0.4 shipped mangled `MHPointFeatureClusterFeature` names, which broke iOS builds. Also renames the `MHWellKnownTileServer` case `MHMapLibre` to `MHMapHero`. Vendored as an XCFramework (device + simulator slices) from the maphero-native 1.2.0 release.

## 1.0.4
  Update the iOS MapHero SDK to 1.0.4, vendored directly as an XCFramework from the maphero-native 1.0.4 release (device + simulator slices).

## 0.0.23
  Migrate to MapHero SDK

## 0.0.19
  Migrate to MapHero

## 0.0.18
  Migrate to MapHero

## 0.0.17
  Migrate to MapHero

## 0.0.16
  Migrate to MapHero

## 0.0.15
  Migrate to MapHero

## 0.0.14
  Migrate to MapHero

## 0.0.13
  Migrate to MapHero

## 0.0.12
  Migrate to MapHero

## 0.0.11
  Migrate to MapHero

## 0.0.10
  Migrate to MapHero

## 0.0.9
  Migrate to MapHero

## 0.0.8
  Migrate to MapHero

## 0.0.7
  Migrate to MapHero

## 0.0.5
  Migrate to MapHero

## 0.0.3

* Updating Documentation
* 
## 0.0.2

* Updating Documentation

## 0.0.1

* Initial Flutter surface rendering

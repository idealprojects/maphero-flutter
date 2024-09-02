# Flutter MapLibre GL

[![Pub Version](https://img.shields.io/pub/v/maphero)](https://pub.dev/packages/maphero)

This Flutter plugin allows to show **embedded interactive and customizable
vector maps** as a Flutter widget.

- This project is a fork
  of [flutter-mapbox-gl](https://github.com/tobrun/flutter-mapbox-gl),
  replacing its usage of Mapbox GL libraries with the open
  source [MapHero](https://github.com/idealprojects/maphero-flutter) libraries.
- The repository has been transferred to
  the [MapHero](https://github.com/idealprojects/maphero-flutter)
  organization. You shouldn't see any negative effects, as GitHub automatically
  redirects references from the old URL to the new URL.

### Supported Platforms

- Support for **web** through [maphero-js](https://github.com/idealprojects/maphero-js)
- Support for **android** and **iOS** through [maphero-native](https://github.com/idealprojects/maphero-native)

This project only supports a subset of the API exposed by these libraries.

### Supported API

| Feature        | Android | iOS | Web |
|----------------|:-------:|:---:|:---:|
| Style          |    ✅    |  ✅  |  ✅  |
| Camera         |    ✅    |  ✅  |  ✅  |
| Gesture        |    ✅    |  ✅  |  ✅  |
| User Location  |    ✅    |  ✅  |  ✅  |
| Symbol         |    ✅    |  ✅  |  ✅  |
| Circle         |    ✅    |  ✅  |  ✅  |
| Line           |    ✅    |  ✅  |  ✅  |
| Fill           |    ✅    |  ✅  |  ✅  |
| Fill Extrusion |    ✅    |  ✅  |  ✅  |
| Heatmap Layer  |    ✅    |  ✅  |  ✅  |

## Get Started

#### Add as a dependency

Add `maphero` to your project by running this command:

```bash
flutter pub add maphero
```

or add it directly as a dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  maphero: ^0.0.4
```

### iOS

There is no specific setup for iOS needed any more to use the package.
If you added specific lines in an earlier version, you'll have to remove them
or your project won't build.

#### Use the location feature

If you access your users' location, you should also add the following key
to `ios/Runner/Info.plist` to explain why you need access to their location
data:

```xml 
<dict>
  <key>NSLocationWhenInUseUsageDescription</key>
  <string>[Your explanation here]</string>
</dict>
```

A possible explanation could be: "Shows your location on the map".

### Android

There is no specific setup for android needed to use the package.

#### Use the location feature

If you want to show the user's location on the map you need to add
the `ACCESS_COARSE_LOCATION` or `ACCESS_FINE_LOCATION` permission in the
application manifest `android/app/src/main/AndroidManifest.xml`.:

```xml
<manifest>
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
</manifest>
```

Starting from Android API level 23 you also need to request it at runtime. This
plugin does not handle this for you. Our example app uses the
flutter "[location](https://pub.dev/packages/location)" plugin for this.

### Web

Include the following JavaScript and CSS files in the `<head>` of
your `web/index.html` file:

```html
<script src='https://maphero.io/maphero.js'></script>
<link href='https://maphero.io/maphero.css' rel='stylesheet'/>
```

## Map Styles

Map styles can be supplied by setting the `styleString` in the `MapHeroMap`
constructor. The following formats are supported:

1. Passing the URL of the map style. This should be a custom map style served
   remotely using a URL that start with `http(s)://`
2. Passing the style as a local asset. Create a JSON file in the `assets` and
   add a reference in `pubspec.yml`. Set the style string to the relative path
   for this asset in order to load it into the map.
3. Passing the style as a local file. create an JSON file in app directory (e.g.
   ApplicationDocumentsDirectory). Set the style string to the absolute path of
   this JSON file.
4. Passing the raw JSON of the map style. This is only supported on Android.

### Tile sources requiring an API key

If your tile source requires an API key, we recommend directly specifying a
source url with the API key included.
For example:

```console
https://tiles.example.com/{z}/{x}/{y}.vector.pbf?api_key={your_key}
```

## Documentation

- Check
  the [API documentation](https://pub.dev/documentation/maphero/latest/).
- See example implementations in
  our [example project](https://github.com/idealprojects/maphero-flutter/tree/main/example).
- For more information about the MapHero libraries
  visit [maphero-js](https://github.com/idealprojects/maphero-js)
  and [maphero-native](https://github.com/idealprojects/maphero-native).
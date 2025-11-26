# Flutter MapHero

[![Pub Version](https://img.shields.io/pub/v/maphero)](https://pub.dev/packages/maphero)
[![likes](https://img.shields.io/pub/likes/maphero?logo=flutter)](https://pub.dev/packages/maphero)
[![Pub Points](https://img.shields.io/pub/points/maphero)](https://pub.dev/packages/maphero/score)
[![stars](https://badgen.net/github/stars/maplibre/flutter-maplibre-gl?label=stars&color=green&icon=github)](https://github.com/josxha/flutter-maplibre-gl/stargazers)

This Flutter plugin allows to show **embedded interactive and customizable
vector maps** as a Flutter widget.

- This project is a fork
  of [flutter-mapbox-gl](https://github.com/tobrun/flutter-mapbox-gl),
  replacing its usage of Mapbox GL libraries with the open
  source [MapHero](https://github.com/idealprojects/maphero-flutter) libraries.
- The repository has been transferred to
  the [MapHero](https://github.com/idealprojects/maphero-flutter)
  organization. You shouldn't see any negative effects, as GitHub automatically
  redirects references from the old URL to the new URL. Please
  see [#221](https://github.com/idealprojects/maphero-flutter/flutter-maplibre-gl/issues/221) for
  more information.

### Supported Platforms

- Support for **web** through [maplibre-gl-js](https://github.com/idealprojects/maphero-flutter/maplibre-gl-js)
- Support for **android** and **iOS** through [maplibre-native](https://github.com/idealprojects/maphero-flutter/maplibre-native)

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
  maphero: ^0.0.8
```

very welcome!

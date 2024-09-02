// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "maphero",
    platforms: [
        .iOS("12.0"),
    ],
    products: [
        .library(name: "maphero", targets: ["maphero"])
    ],
    dependencies: [
        // When updating the dependency version,
        // make sure to also update the version in maplibre_gl.podspec.
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution.git", exact: "6.5.0"),
    ],
    targets: [
        .target(
            name: "maphero",
            dependencies: [
                .product(name: "MapLibre", package: "maplibre-gl-native-distribution")
            ],
            cSettings: [
                .headerSearchPath("include/maplibre_gl")
            ]
        )
    ]
)

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
        // make sure to also update the version in maphero.podspec.
        .package(url: "https://github.com/idealprojects/maphero-ios.git", exact: "0.0.1"),
    ],
    targets: [
        .target(
            name: "maphero",
            dependencies: [
                .product(name: "MapHero", package: "maphero-ios")
            ],
            cSettings: [
                .headerSearchPath("include/maphero")
            ]
        )
    ]
)

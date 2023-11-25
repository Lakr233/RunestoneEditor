// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RunestoneThemeSupport",
    platforms: [
        .iOS(.v14), .macCatalyst(.v14),
    ],
    products: [
        .library(name: "RunestoneThemeSupport", targets: ["RunestoneThemeSupport"]),

        .library(name: "RunestoneTomorrowTheme", targets: ["RunestoneTomorrowTheme"]),
        .library(name: "RunestoneOneDarkTheme", targets: ["RunestoneOneDarkTheme"]),
        .library(name: "RunestonePlainTextTheme", targets: ["RunestonePlainTextTheme"]),
        .library(name: "RunestoneThemeCommon", targets: ["RunestoneThemeCommon"]),
    ],
    dependencies: [
        .package(name: "Runestone", path: "../Runestone"),
    ],
    targets: [
        .target(name: "RunestoneThemeSupport", dependencies: [
            "RunestoneTomorrowTheme",
            "RunestoneOneDarkTheme",
            "RunestonePlainTextTheme",
        ]),

        .target(name: "RunestoneThemeCommon", dependencies: ["Runestone"]),

        .target(name: "RunestoneTomorrowTheme", dependencies: ["Runestone", "RunestoneThemeCommon"], resources: [.process("Colors.xcassets")]),
        .target(name: "RunestoneOneDarkTheme", dependencies: ["Runestone", "RunestoneThemeCommon"], resources: [.process("Colors.xcassets")]),
        .target(name: "RunestonePlainTextTheme", dependencies: ["Runestone", "RunestoneThemeCommon"]),
    ]
)

// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RunestoneEditor",
    platforms: [.iOS(.v14), .macCatalyst(.v14)],
    products: [
        .library(
            name: "RunestoneEditor",
            targets: ["RunestoneEditor"]
        ),
    ],
    dependencies: [
        .package(name: "Runestone", path: "External/Runestone"),
        .package(name: "RunestoneThemeSupport", path: "External/RunestoneThemeSupport"),
        .package(name: "RunestoneLanguageSupport", path: "External/RunestoneLanguageSupport"),
    ],
    targets: [
        .target(name: "RunestoneEditor", dependencies: [
            "Runestone",
            "RunestoneThemeSupport",
            "RunestoneLanguageSupport",
        ]),
    ]
)

// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Runestone",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14), .macCatalyst(.v14),
    ],
    products: [
        .library(name: "Runestone", targets: ["Runestone"]),
    ],
    dependencies: [
        .package(name: "TreeSitter", path: "../TreeSitter"),
    ],
    targets: [
        .target(name: "Runestone", dependencies: [
            .product(name: "TreeSitter", package: "TreeSitter"),
        ], resources: [
            .process("TextView/Appearance/Theme.xcassets"),
        ]),
        .target(name: "TestTreeSitterLanguages", cSettings: [.unsafeFlags(["-w"])]),
        .testTarget(name: "RunestoneTests", dependencies: ["Runestone", "TestTreeSitterLanguages"]),
    ]
)

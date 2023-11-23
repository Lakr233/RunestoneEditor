// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreeSitter",
    platforms: [
        .iOS(.v14), .macCatalyst(.v14),
    ],
    products: [
        .library(name: "TreeSitter", targets: ["TreeSitter"]),
    ],
    targets: [
        .target(name: "TreeSitter", sources: ["src/lib.c"]),
    ]
)

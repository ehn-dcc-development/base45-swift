// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "base45-swift",
    products: [
        .library(
            name: "base45-swift",
            targets: ["base45-swift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "base45-swift",
            dependencies: []),
        .testTarget(
            name: "base45-swiftTests",
            dependencies: ["base45-swift"]),
    ]
)

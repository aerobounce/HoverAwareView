// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HoverAwareView",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "HoverAwareView",
            targets: ["HoverAwareView"]
        ),
    ],
    targets: [
        .target(
            name: "HoverAwareView",
            dependencies: []
        ),
    ]
)

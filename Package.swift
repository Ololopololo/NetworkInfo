// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetworkInfo",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "NetworkInfo",
            targets: ["NetworkInfo"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NetworkInfo",
            dependencies: [],
            path: "Sources/NetworkInfo",
            publicHeadersPath: "Public"
        ),
        .testTarget(
            name: "NetworkInfoTests",
            dependencies: ["NetworkInfo"],
            path: "Tests/NetworkInfoTests"
        ),
    ]
)

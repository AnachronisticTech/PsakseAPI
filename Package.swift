// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PsakseAPI",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "PsakseAPI",
            targets: ["PsakseAPI"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AnachronisticTech/WebServiceBuilder", from: "1.0.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "PsakseAPI",
            dependencies: [
                .product(name: "WebServiceBuilder", package: "WebServiceBuilder"),
                .product(name: "Fluent", package: "fluent"),
            ],
            resources: [
                .copy("Resources"),
                .copy("Public")
            ]
        ),
    ]
)

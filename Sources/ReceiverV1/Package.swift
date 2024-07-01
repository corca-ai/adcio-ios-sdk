// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "OpenAPIClient",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "OpenAPIClient",
            targets: ["OpenAPIClient"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.6.7")),
    ],
    targets: [
        .target(
            name: "OpenAPIClient",
            dependencies: ["AnyCodable"],
            path: "OpenAPIClient/Classes"
        ),
    ]
)

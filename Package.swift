// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Adcio-iOS-SDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AdcioSDK",
                 targets: [
                    "AdcioPlacement",
                    "AdcioAnalytics",
                    "AdcioAgent"
                 ]),
        .library(
            name: "AdcioPlacement",
            targets: ["AdcioPlacement"]),
        .library(
            name: "AdcioAnalytics",
            targets: ["AdcioAnalytics"]),
        .library(
            name: "AdcioAgent",
            targets: ["AdcioAgent"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.6.1")),
    ],
    targets: [
        .target(name: "Core"),
        .target(
            name: "AdcioPlacement",
            dependencies: [
                .target(name: "Core"),
                "ControllerV1"
            ],
            path: "Sources/AdcioPlacement"
        ),
        .target(
            name: "AdcioAnalytics",
            dependencies: [
                .target(name: "Core"),
                "ReceiverV1"
            ],
            path: "Sources/AdcioAnalytics"
        ),
        .target(
            name: "AdcioAgent",
            dependencies: []
        ),
        .target(
            name: "ControllerV1",
            dependencies: [
                .product(name: "AnyCodable", package: "AnyCodable")
            ],
            path: "Sources/ControllerV1"
        ),
        .target(
            name: "ReceiverV1",
            dependencies: [
                .product(name: "AnyCodable", package: "AnyCodable")
            ],
            path: "Sources/ReceiverV1"
        ),
        .testTarget(
            name: "AdcioPlacementTests",
            dependencies: ["AdcioPlacement"]),
        .testTarget(
            name: "AdcioAnalyticsTests",
            dependencies: ["AdcioAnalytics"]),
        .testTarget(
            name: "AdcioAgentTests",
            dependencies: ["AdcioAgent"]),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"]),
    ]
)

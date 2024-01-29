// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Adcio-iOS-SDK",
    platforms: [.iOS(.v15)],
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
    targets: [
        .target(name: "Core"),
        .target(
            name: "AdcioPlacement",
            dependencies: [
                .target(name: "Core"),
                .target(name: "Impression")
            ]
        ),
        .target(
            name: "AdcioAnalytics",
            dependencies: [
                .target(name: "Core"),
                .target(name: "Impression")
            ]
        ),
        .target(
            name: "AdcioAgent",
            dependencies: []
        ),
        .target(
            name: "Impression",
            dependencies: []
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

// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdcioCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AdcioSDK",
            targets: ["AdcioCore", "AdcioAnalytics", "AdcioAgent", "AdcioPlacement"]),
        .library(
            name: "AdcioCore",
            targets: ["AdcioCore"]),
        .library(
            name: "AdcioAnalytics",
            targets: ["AdcioAnalytics"]),
        .library(
            name: "AdcioAgent",
            targets: ["AdcioAgent"]),
        .library(
            name: "AdcioPlacement",
            targets: ["AdcioPlacement"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", Version(5,1,0)..<Version(6,0,0))
    ],
    targets: [
        .target(
            name: "AdcioCore"),
        .target(
            name: "AdcioAnalytics",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
            ]
        ),
        .target(
            name: "AdcioAgent",
            dependencies: [
                .target(name: "AdcioCore")
            ]
        ),
        .target(
            name: "AdcioPlacement",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
            ]
        )
    ]
)

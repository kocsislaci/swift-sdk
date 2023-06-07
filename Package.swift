// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "PaylikeSDK",
    platforms: [.macOS(.v10_15), .iOS(.v13)],
    products: [
        .library(
            name: "PaylikeSDK", targets: ["PaylikeSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kocsislaci/swift-engine", branch: "feature/initial-release"),
        .package(url: "https://github.com/httpswift/swifter", .upToNextMajor(from: "1.5.0"))
    ],
    targets: [
        .target(
            name: "PaylikeSDK",
            dependencies: [
                .product(name: "PaylikeEngine", package: "swift-engine")
            ]),
        .testTarget(
            name: "PaylikeSDKTests",
            dependencies: [
                "PaylikeSDK",
                .product(name: "PaylikeEngine", package: "swift-engine"),
                .product(name: "Swifter", package: "swifter")
            ]
        )

    ],
    swiftLanguageVersions: [.v5]
)

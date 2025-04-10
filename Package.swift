// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TradeVisionUI",
    platforms: [.iOS(.v16), .macOS(.v15)],
    products: [.library(name: "TradeVisionUI", targets: ["TradeVisionUI"])],
    targets: [
        .target(
            name: "TradeVisionUI",
            path: "Sources/TradeVisionUI"
        )
    ]
)

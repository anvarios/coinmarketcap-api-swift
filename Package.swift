// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "coinmarketcap-api-swift",
    products: [
        .library(name: "CoinMarketCapApi", targets: ["CoinMarketCapApi"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.4.0"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.4.3")
    ],
    targets: [
        .target(name: "CoinMarketCapApi", dependencies: [
            .product(name: "Logging", package: "swift-log"),
            .product(name: "Alamofire", package: "Alamofire")
        ]),
        .testTarget(name: "CoinMarketCapApiTests", dependencies: [
            .target(name: "CoinMarketCapApi")
        ])
    ],
    swiftLanguageVersions: [.v5]
)

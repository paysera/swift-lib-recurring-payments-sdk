// swift-tools-version: 5.7.0

import PackageDescription

let package = Package(
    name: "PayseraRecurringPaymentsSDK",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "PayseraRecurringPaymentsSDK", targets: ["PayseraRecurringPaymentsSDK"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/paysera/swift-lib-common-sdk",
            from: "4.3.0"
        ),
        .package(
            url: "https://github.com/paysera/swift-lib-accounts-sdk",
            from: "8.9.0"
        )
    ],
    targets: [
        .target(
            name: "PayseraRecurringPaymentsSDK",
            dependencies: [
                .product(name: "PayseraCommonSDK", package: "swift-lib-common-sdk"),
                .product(name: "PayseraAccountsSDK", package: "swift-lib-accounts-sdk")
            ]
        ),
        .testTarget(
            name: "PayseraRecurringPaymentsSDKTests",
            dependencies: ["PayseraRecurringPaymentsSDK"]
        ),
    ]
)

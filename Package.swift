// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PayseraRecurringPaymentsSDK",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "PayseraRecurringPaymentsSDK", targets: ["PayseraRecurringPaymentsSDK"]),
    ],
    dependencies: [
        .package(
            name: "PayseraCommonSDK",
            url: "https://github.com/paysera/swift-lib-common-sdk",
            .branch("xcode13")
        ),
        .package(
            name: "PayseraAccountsSDK",
            url: "https://github.com/paysera/swift-lib-accounts-sdk",
            .branch("xcode13")
        )
    ],
    targets: [
        .target(
            name: "PayseraRecurringPaymentsSDK",
            dependencies: ["PayseraCommonSDK", "PayseraAccountsSDK"]
        ),
        .testTarget(
            name: "PayseraRecurringPaymentsSDKTests",
            dependencies: ["PayseraRecurringPaymentsSDK"]
        ),
    ]
)

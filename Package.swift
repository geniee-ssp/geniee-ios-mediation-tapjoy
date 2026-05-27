// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationTapjoy",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationTapjoy",
            targets: ["GenieeMediationTapjoyTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/Tapjoy/swift-packages.git",
            exact: "14.7.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationTapjoyTarget",
            dependencies: [
                "GenieeMediationTapjoy",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "Tapjoy", package: "swift-packages")
            ],
            path: "Sources/GenieeMediationTapjoyTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationTapjoy",
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-tapjoy/releases/download/14.7.0/GenieeMediationTapjoy.14.7.0.0.zip",
            checksum: "0d63c6279d209ec4b96ae2246c10d5aeb8f808bc24709d4f208ea73d239dd32e"
        )
    ]
)

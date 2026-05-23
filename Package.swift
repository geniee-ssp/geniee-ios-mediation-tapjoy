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
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/Tapjoy/swift-packages.git",
            from: "14.0.0"
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
            url: "https://github.com/unigeniee/geniee-ios-mediation-tapjoy/releases/download/8.4.100/GenieeMediationTapjoy.8.4.1.0.zip",
            checksum: "ca9947fcf7252e64c3b7254c43828bb1276770412be033b71503a4abc68e7ddf"
        )
    ]
)

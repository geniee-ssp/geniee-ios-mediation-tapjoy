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
            url: "https://github.com/unigeniee/geniee-ios-mediation-tapjoy/releases/download/14.7.0/GenieeMediationTapjoy.14.7.0.0.zip",
            checksum: "2f61dc1c2fb470da5c371f4df49b3927358eab4a6ffd06c2b32195a7165b308d"
        )
    ]
)

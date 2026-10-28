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
            from: "8.5.1"
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
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-tapjoy/releases/download/14.7.1/GenieeMediationTapjoy.14.7.0.1.zip",
            checksum: "51f77c18091fd043e717dc0e0e4a8f645d97f4291b5c05446071b255fb0b9bc7"
        )
    ]
)

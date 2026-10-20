// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationAdmobAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnyThinkMediationAdmobAdapter",
            targets: ["AnyThinkMediationAdmobAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.7.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkAdmobAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkAdmobAdapter/13.7.0.2.9/AnyThinkAdmobAdapter-13.7.0.2.9.zip",
            checksum: "47b5839db7fa3d0ad686e6df4c19caa868190a444e81ae5b35d2353f114cb97b"
        ),
        .target(
            name: "AnyThinkMediationAdmobAdapterTarget",
            dependencies: [
                "AnyThinkAdmobAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/AnyThinkMediationAdmobAdapterTarget"
        )
    ]
)

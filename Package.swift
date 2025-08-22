// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YYWebImage",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "YYWebImage",
            targets: ["YYWebImage"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Asura19/YYImage.git", from: "1.0.6"),
        .package(url: "https://github.com/Asura19/YYCache.git", from: "1.0.5"),
    ],
    targets: [
        .target(
            name: "YYWebImage",
            dependencies: [
                "YYImage",
                "YYCache"
            ],
            path: "YYWebImage",
            publicHeadersPath: "",
            cSettings: [
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("AssetsLibrary"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MobileCoreServices")
            ]
        ),
    ]
)

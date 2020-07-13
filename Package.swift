// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "EvakuermoriaDk",
    products: [
        .executable(
            name: "EvakuermoriaDk",
            targets: ["EvakuermoriaDk"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.6.0")
    ],
    targets: [
        .target(
            name: "EvakuermoriaDk",
            dependencies: ["Publish"]
        )
    ]
)
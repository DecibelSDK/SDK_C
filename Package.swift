// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  
//  Copyright © 2023 Medallia. Use subject to licensing terms.

let package = Package(
    name: "sdk-c",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "sdk-c",
            targets: ["SDK_C"]
        ),
        .library(
            name: "sdk-br",
            targets: ["SDK_BR"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SDK_C",
            path: "SDK_C.xcframework"
        ),
        .binaryTarget(
            name: "SDK_BR",
            url: "https://github.com/DecibelSDK/SDK_BR/releases/download/1.0.1/SDK_BR.xcframework.zip",
            checksum: "5bc54cca3f15b7dea50e83266475e9fcda53777e2856abb5a9c9617533c98cf2"
        ),
    ]
)


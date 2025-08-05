// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: "SendbirdLiveSDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "SendbirdLiveSDK",
            targets: ["SendbirdLiveSDKTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/sendbird/sendbird-webrtc-ios",  "1.9.0"..<"1.10.0"),
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", "4.29.2"..<"4.30.0")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveSDK",
            url: "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.5.0/SendbirdLiveSDK.xcframework.zip",
            checksum: "002fa028eb401a33ec951150955f15894f2315ddc6482adc8125da6c4075ffaa"
        ),
        .target(
            name: "SendbirdLiveSDKTarget",
            dependencies: [
                .target(name: "SendbirdLiveSDK"),
                .product(name: "WebRTC", package: "sendbird-webrtc-ios"),
                .product(name: "SendbirdChatSDK", package: "sendbird-chat-sdk-ios")
            ],
            path: "Sources"
        )
    ]
)

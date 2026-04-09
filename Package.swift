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
        .package(url: "https://github.com/sendbird/sendbird-webrtc-ios",  "1.10.0"..<"1.11.0"),
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", "4.39.0"..<"4.40.0")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveSDK",
            url: "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.6.0/SendbirdLiveSDK.xcframework.zip",
            checksum: "6b26e3829668e33c5e0445ee4abf5f9e81e4fd94a4d03457ea3a3c0a38425ddf"
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

// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: "SendbirdLiveSDK",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "SendbirdLiveSDK",
            targets: ["SendbirdLiveSDKTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sendbird/sendbird-webrtc-ios", from: "1.6.0"),
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", from: "4.6.2")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveSDK",
            url: "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.0.0-beta.8/SendbirdLiveSDK.xcframework.zip",
            checksum: "4e77a2da08d0bca90b35bc1a3eb1f88117002b7984a9f7789bdd20d7f1cab683"
        ),
        .target(name: "SendbirdLiveSDKTarget",
                dependencies: [
                    .target(name: "SendbirdLiveSDK"),
                    .product(name: "WebRTC", package: "sendbird-webrtc-ios"),
                    .product(name: "SendbirdChatSDK", package: "sendbird-chat-sdk-ios")
                ],
                path: "Sources"),
    ]
)

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
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", "4.35.0"..<"4.36.0")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveSDK",
            url: "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.5.1/SendbirdLiveSDK.xcframework.zip",
            checksum: "2f6814b89792e8e4fca88c10199c889411cca7492559d82dc2f99192e6b575e4"
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

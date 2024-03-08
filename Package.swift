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
        .package(url: "https://github.com/sendbird/sendbird-webrtc-ios",  "1.8.1"..<"1.9.0"),
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", from: "4.11.0")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveSDK",
            url: "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.2.3/SendbirdLiveSDK.xcframework.zip",
            checksum: "fd5c4e7af56ff51bec6f9aa8bd2a0e36c49e29d0926b7455f6e7465073907865"
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

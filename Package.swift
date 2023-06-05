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
        .package(url: "https://github.com/sendbird/sendbird-webrtc-ios", from: "1.7.0"),
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", from: "4.8.0")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveSDK",
            url: "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.0.0-beta.13/SendbirdLiveSDK.xcframework.zip",
            checksum: "226895eeba36c86f02a6907fe0b87aacc5ef7c334a9e6cc7a21504cbfd3b5051"
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

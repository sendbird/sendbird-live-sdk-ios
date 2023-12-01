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
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", from: "4.11.0")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveSDK",
            url: "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.2.0/SendbirdLiveSDK.xcframework.zip",
            checksum: "88e13d49d75a6ddc13fbab4ab564310093cf840381a7cbdfdb60f6fb9711cb61"
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

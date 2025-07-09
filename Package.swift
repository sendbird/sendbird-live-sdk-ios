// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: "SendbirdLiveSDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "SendbirdLiveSDK",
            targets: ["SendbirdLiveSDKTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sendbird/sendbird-webrtc-ios",  "1.9.0"..<"1.10.0"),
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", from: "4.27.2")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveSDK",
            url: "https://github.com/sendbird/sendbird-live-sdk-ios/releases/download/v1.4.0/SendbirdLiveSDK.xcframework.zip",
            checksum: "a3bcf083e46e84069ec28d92a6aa576b74a6b2ae87bae2df8c2bb009a7b4216b"
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

// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// sdk-version:2.9.2

import PackageDescription

let version = "2.9.2"

let excludeFiles = ["Info.plist", "README.md"]

let package = Package(
    name: "KakaoPartnerSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "KakaoPartnerSDK",
            targets: ["KakaoPartnerSDKCommon", "KakaoPartnerSDKAuth", "KakaoPartnerSDKUser", "KakaoPartnerSDKTalk", "KakaoPartnerSDKLink"]),
        .library(
            name: "KakaoPartnerSDKCommon",
            targets: ["KakaoPartnerSDKCommon"]),
        .library(
            name: "KakaoPartnerSDKAuth",
            targets: ["KakaoPartnerSDKAuth"]),
        .library(
            name: "KakaoPartnerSDKUser",
            targets: ["KakaoPartnerSDKUser"]),
        .library(
            name: "KakaoPartnerSDKTalk",
            targets: ["KakaoPartnerSDKTalk"]),
        .library(
            name: "KakaoPartnerSDKLink",
            targets: ["KakaoPartnerSDKLink"]),
        .library(
            name: "KakaoPartnerSDKFriend",
            targets: ["KakaoPartnerSDKFriendWrapper"])
    ],
    dependencies: [
        .package(name:"KakaoOpenSDK", path: "../private-kakao-ios-sdk")
    ],
    targets: [
        .target(
            name: "KakaoPartnerSDKCommon",
            dependencies: [
                .product(name: "KakaoSDKCommon", package: "KakaoOpenSDK"),
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoPartnerSDKAuth",
            dependencies: [
                .target(name: "KakaoPartnerSDKCommon"),
                .product(name: "KakaoSDKAuth", package: "KakaoOpenSDK"),
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoPartnerSDKUser",
            dependencies: [
                .target(name: "KakaoPartnerSDKAuth"),
                .product(name: "KakaoSDKUser", package: "KakaoOpenSDK"),
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoPartnerSDKTalk",
            dependencies: [
                .target(name: "KakaoPartnerSDKUser"),
                .product(name: "KakaoSDKTalk", package: "KakaoOpenSDK"),
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoPartnerSDKLink",
            dependencies: [
                .target(name: "KakaoPartnerSDKCommon"),
                .product(name: "KakaoSDKLink", package: "KakaoOpenSDK"),
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoPartnerSDKFriendWrapper",
            dependencies: [
                .product(name: "KakaoSDKUser", package: "KakaoOpenSDK"),
                .target(name: "KakaoPartnerSDKCommon"),
                .target(name: "KakaoPartnerSDKFriend")
            ]
        ),
        .binaryTarget(name:"KakaoPartnerSDKFriend",
                      path:"sources/KakaoPartnerSDKFriend/KakaoPartnerSDKFriend.xcframework")
    ],
    swiftLanguageVersions: [
        .v5
    ]
)

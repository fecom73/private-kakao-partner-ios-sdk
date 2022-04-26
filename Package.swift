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
            name: "KakaoPartnerSDKFriendStatic",
            targets: ["KakaoPartnerSDKFriendStaticWrapper"])
    ],
    dependencies: [
        .package(name: "Alamofire",
                  url: "https://github.com/Alamofire/Alamofire.git",
                  Version(5,1,0)..<Version(6,0,0)),
        .package(name: "KakaoOpenSDK",
                 url: "https://github.com/fecom73/private-kakao-ios-sdk.git",
                 .exact("2.9.2")
                )
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
            name: "KakaoPartnerSDKFriendStaticWrapper",
            dependencies: [
                // .product(name:"Alamofire", package: "Alamofire"),
                // .product(name: "KakaoSDKCommon", package: "KakaoOpenSDK"),
                // .product(name: "KakaoSDKAuth", package: "KakaoOpenSDK"),
                .product(name: "KakaoSDKUser", package: "KakaoOpenSDK"),
                .target(name: "KakaoPartnerSDKCommon"),
                .target(name: "KakaoPartnerSDKFriendStatic")
            ]
        ),
        .binaryTarget(name:"KakaoPartnerSDKFriendStatic",
                      path:"sources/KakaoPartnerSDKFriendStatic/KakaoPartnerSDKFriendStatic.xcframework")
    ]
)

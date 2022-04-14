// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// sdk-version:2.9.2

import PackageDescription

let package = Package(
    name: "KakaoPartnerSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
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
            targets: ["KakaoPartnerSDKFriend"])
    ],
//    dependencies: [
//        .package(name: "KakaoOpenSDK", path: "../private-kakao-ios-sdk")
//    ],
    targets: [
        .binaryTarget(name: "KakaoPartnerSDKCommon",
                      path: "kakao-partner-ios-sdk-dynamic-xcframeworks-snapshot-2.9.2/KakaoPartnerSDKCommon.xcframework"
        ),
        .binaryTarget(name: "KakaoPartnerSDKAuth",
                      path: "kakao-partner-ios-sdk-dynamic-xcframeworks-snapshot-2.9.2/KakaoPartnerSDKAuth.xcframework"
        ),
        .binaryTarget(name: "KakaoPartnerSDKUser",
                      path: "kakao-partner-ios-sdk-dynamic-xcframeworks-snapshot-2.9.2/KakaoPartnerSDKUser.xcframework"
        ),
        .binaryTarget(name: "KakaoPartnerSDKTalk",
                      path: "kakao-partner-ios-sdk-dynamic-xcframeworks-snapshot-2.9.2/KakaoPartnerSDKTalk.xcframework"
        ),
        .binaryTarget(name: "KakaoPartnerSDKLink",
                      path: "kakao-partner-ios-sdk-dynamic-xcframeworks-snapshot-2.9.2/KakaoPartnerSDKLink.xcframework"
        ),
        .binaryTarget(name: "KakaoPartnerSDKFriend",
                      path: "kakao-partner-ios-sdk-dynamic-xcframeworks-snapshot-2.9.2/KakaoPartnerSDKFriend.xcframework"
        )
 
    ],
    swiftLanguageVersions: [
        .v5
    ]
)

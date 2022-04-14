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
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKCommon_xcframework.zip",
                      checksum: "f08fdd6a726b8b4959edecef278d86ca0284c67350ed84e9c289507453ae7833"
        ),
        // .binaryTarget(name: "KakaoPartnerSDKCommon",
        //               path: "kakao-partner-ios-sdk-dynamic-xcframeworks-snapshot-2.9.2/KakaoPartnerSDKCommon.xcframework"
        // ),
        .binaryTarget(name: "KakaoPartnerSDKAuth",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKAuth_xcframework.zip",
                      checksum: "f8efce11c74a4079ac45881488ce7a2641abd8c551a4bcdae1a92d6d98da7bd0"
        ),
        .binaryTarget(name: "KakaoPartnerSDKUser",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKUser_xcframework.zip",
                      checksum: "b638a14fb702abc532dd7a590b8b25314f26d0fc706897babadf8b7bc99a55be"
        ),
        .binaryTarget(name: "KakaoPartnerSDKTalk",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKTalk_xcframework.zip",
                      checksum: "d72f83a07a12e66853b4f4907a88ae8297b8322c67a30cca238b2a950beb8a54"
        ),
        .binaryTarget(name: "KakaoPartnerSDKLink",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKLink_xcframework.zip",
                      checksum: "96f7651b6771b747f16f649b6998291dcd1bfcc0bcdb4cd948605209983b9743"
        ),
        .binaryTarget(name: "KakaoPartnerSDKFriend",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKFriend_xcframework.zip",
                      checksum: "aea0f47b5155d9539bc5845cd086ce4a15baea1f5f900a7c4b486d42f52b8854"
        ) 
    ],
    swiftLanguageVersions: [
        .v5
    ]
)

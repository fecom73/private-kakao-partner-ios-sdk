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
            type: .dynamic,
            targets: ["KakaoPartnerSDKCommonTarget"]),
        .library(
            name: "KakaoPartnerSDKAuth",
            type: .dynamic,
            targets: ["KakaoPartnerSDKAuthTarget"]),
        .library(
            name: "KakaoPartnerSDKUser",
            type: .dynamic,
            targets: ["KakaoPartnerSDKUserTarget"]),
        .library(
            name: "KakaoPartnerSDKTalk",
            type: .dynamic,
            targets: ["KakaoPartnerSDKTalkTarget"]),
        .library(
            name: "KakaoPartnerSDKLink",
            type: .dynamic,
            targets: ["KakaoPartnerSDKLinkTarget"]),
        .library(
            name: "KakaoPartnerSDKFriend",
            type: .dynamic,
            targets: ["KakaoPartnerSDKFriendTarget"])
    ],
    dependencies: [
       .package(name: "KakaoOpenSDK",
                 url: "https://github.com/fecom73/private-kakao-ios-sdk.git",
                 .exact("2.9.2")
                )
    ],
    targets: [
        .binaryTarget(name: "KakaoPartnerSDKCommon",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKCommon_xcframework.zip",
                      checksum:"a30738fe02a4de972789328e46d01a884d0b9a9a8fcfe19d09379731a98e8748"
        ),
        .binaryTarget(name:"KakaoPartnerSDKAuth",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKAuth_xcframework.zip",
                      checksum:"60cddfb31b3855b9e971bbc5f4af41540a91992ce584e5fd07f652fe5c97d615"
        ),
        .binaryTarget(name: "KakaoPartnerSDKUser",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKUser_xcframework.zip",
                      checksum:"9b51b56db46fce1c488f754ef265f5727d5fa6feb4d2e70b111265aa07d0e3fc"
        ),
        .binaryTarget(name: "KakaoPartnerSDKTalk",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKTalk_xcframework.zip",
                      checksum: "67e71322d78acc30dbee55318f037a780324708f705da83556381dcd80229774"
        ),
        .binaryTarget(name: "KakaoPartnerSDKLink",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKLink_xcframework.zip",
                      checksum: "a5bf352e861121a2db8320a6ff22659deb40f6913b67055e31b56d890227da2b"
        ),
        .binaryTarget(name: "KakaoPartnerSDKFriend",
                      url:"https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoPartnerSDKFriend_xcframework.zip",
                      checksum: "da10e8443d979bee4db61bf8623729aa729b8974322168d0cfcf0cb182f4be58"
        ) 
    ],
    swiftLanguageVersions: [
        .v5
    ]
)

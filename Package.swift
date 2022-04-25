// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// sdk-version:2.9.2
import PackageDescription

let version = "2.9.2"

var checksums: [String:String] = [:]
checksums["KakaoPartnerSDKCommon"] = "89ed7dc6fb138d4e477e0053d868116da414e7d698131950ce8dd8d63aa7097b"
checksums["KakaoPartnerSDKAuth"] = "e66d5d87c3f33863c856a393a98783b088c221c195d1db2d3e90760050f2e158"
checksums["KakaoPartnerSDKUser"] = "3b6e9c6f62affe50e351b437af5358289984f900c232a37b1d6f890fe01548f3"
checksums["KakaoPartnerSDKTalk"] = "d7c816dfce33d766fa8c1b7672aa757b38a0e0a141dd993b60fa1b8f3c6e9de7"
checksums["KakaoPartnerSDKLink"] = "7338ad23be6208d760bcd8d6ff323c2989607cd95844af61cd92f5ff6b59dadb"
checksums["KakaoPartnerSDKFriend"] = "95bf0bd10fc432d037ad23ebca181bf650561be321e375bb85579ecf54b410d8"

let url = "https://github.com/fecom73/private-kakao-partner-ios-sdk/releases/download/\(version)"

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
    targets: [
        .binaryTarget(name: "KakaoPartnerSDKCommon",
                     url:"\(url)/KakaoPartnerSDKCommon_xcframework.zip",
                     checksum: checksums["KakaoPartnerSDKCommon"]!
        ),        
        .binaryTarget(name: "KakaoPartnerSDKAuth",
                     url:"\(url)/KakaoPartnerSDKAuth_xcframework.zip",
                     checksum: checksums["KakaoPartnerSDKAuth"]!
        ),        
        .binaryTarget(name: "KakaoPartnerSDKUser",
                      url:"\(url)/KakaoPartnerSDKUser_xcframework.zip",
                      checksum: checksums["KakaoPartnerSDKUser"]!
        ),        
        .binaryTarget(name: "KakaoPartnerSDKTalk",
                     url:"\(url)/KakaoPartnerSDKTalk_xcframework.zip",
                     checksum: checksums["KakaoPartnerSDKTalk"]!
        ),        
        .binaryTarget(name: "KakaoPartnerSDKLink",
                     url:"\(url)/KakaoPartnerSDKLink_xcframework.zip",
                     checksum: checksums["KakaoPartnerSDKLink"]!
        ),
        .binaryTarget(name: "KakaoPartnerSDKFriend",
                     url:"\(url)/KakaoPartnerSDKFriend_xcframework.zip",
                     checksum: checksums["KakaoPartnerSDKFriend"]!
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)

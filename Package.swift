// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'core' (do not edit)
let remotecoreUrl =
    "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248055341.zip"
let remotecoreChecksum = "d9d0df846194d3da63e65cb7d21deca406728d6431b4dc1322f97f3d1b012435"
let corePackageName = "core"
// END KMMBRIDGE BLOCK FOR 'core'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'auth' (do not edit)
let remoteauthUrl =
    "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248055341.zip"
let remoteauthChecksum = "d9d0df846194d3da63e65cb7d21deca406728d6431b4dc1322f97f3d1b012435"
let authPackageName = "auth"
// END KMMBRIDGE BLOCK FOR 'auth'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'user' (do not edit)
let remoteuserUrl =
    "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248055341.zip"
let remoteuserChecksum = "d9d0df846194d3da63e65cb7d21deca406728d6431b4dc1322f97f3d1b012435"
let userPackageName = "user"
// END KMMBRIDGE BLOCK FOR 'user'

let package = Package(
    name: "Test",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: corePackageName,
            targets: [corePackageName]
        ),
        .library(
            name: authPackageName,
            targets: [authPackageName]
        ),
        .library(
            name: userPackageName,
            targets: [userPackageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: corePackageName,
            url: remotecoreUrl,
            checksum: remotecoreChecksum
        ),
        .binaryTarget(
            name: authPackageName,
            url: remoteauthUrl,
            checksum: remoteauthChecksum,
            dependencies: [corePackageName]
        ),
        .binaryTarget(
            name: userPackageName,
            url: remoteuserUrl,
            checksum: remoteuserChecksum,
            dependencies: [corePackageName]
        ),
    ]
)

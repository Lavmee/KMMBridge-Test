// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'core' (do not edit)
let remotecoreUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248058823.zip"
let remotecoreChecksum = "9cabc86bff2d842a4f5a55aa1a894ebdb0dbb0c08491d9483557ae2e08f83175"
let corePackageName = "core"
// END KMMBRIDGE BLOCK FOR 'core'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'auth' (do not edit)
let remoteauthUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248058787.zip"
let remoteauthChecksum = "f7b27d1075552ab91c8469579fe95ad3cce443c103bcb0838e49e235079a6317"
let authPackageName = "auth"
// END KMMBRIDGE BLOCK FOR 'auth'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'user' (do not edit)
let remoteuserUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248058893.zip"
let remoteuserChecksum = "b0750b9ec31ea515f344ddd4042d6036838cb299362629c8573f737cecc32d29"
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
        .library(
            name: "Test",
            targets: [corePackageName, authPackageName, userPackageName]
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

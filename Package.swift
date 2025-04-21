// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'core' (do not edit)
let remotecoreUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248070919.zip"
let remotecoreChecksum = "ed23082ca9b7596ce0a90d7c9f8114a98471977f4e415d50274651f45d461053"
let corePackageName = "core"
// END KMMBRIDGE BLOCK FOR 'core'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'auth' (do not edit)
let remoteauthUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248070874.zip"
let remoteauthChecksum = "535ac0fc4ba04f97f6adbf67226c241ebe335acc9d3ec0df782c06d41d0d38c9"
let authPackageName = "auth"
// END KMMBRIDGE BLOCK FOR 'auth'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'user' (do not edit)
let remoteuserUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248070972.zip"
let remoteuserChecksum = "b9b4b22cb6d813916fd07d72cc6c8779830d1886de5c7c3031bc17650c7721c3"
let userPackageName = "user"
// END KMMBRIDGE BLOCK FOR 'user'

let package = Package(
    name: "Test",
    platforms: [
        .iOS(.v13)
    ],
    products: [
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
            checksum: remoteauthChecksum
        ),
        .binaryTarget(
            name: userPackageName,
            url: remoteuserUrl,
            checksum: remoteuserChecksum
        ),
    ]
)

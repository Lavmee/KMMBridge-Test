// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'core' (do not edit)
let remotecoreUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248064906.zip"
let remotecoreChecksum = "c8abb249e865a047e9923c7d277f48fec9d1d84292dfbad38febc97a02602980"
let corePackageName = "core"
// END KMMBRIDGE BLOCK FOR 'core'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'auth' (do not edit)
let remoteauthUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248064771.zip"
let remoteauthChecksum = "44b68998fcc5b623fe1cb57eb89681955273b12eec0d9e725d62bdeea7dc0f29"
let authPackageName = "auth"
// END KMMBRIDGE BLOCK FOR 'auth'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'user' (do not edit)
let remoteuserUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248065023.zip"
let remoteuserChecksum = "da95a22b7ba9a08653919cc59b0ad522038ebf902fcefd16fbf8b5ddfca0819b"
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

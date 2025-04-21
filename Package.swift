// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'core' (do not edit)
let remotecoreUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248070079.zip"
let remotecoreChecksum = "2f29d6ead7d1e7f682c9f26cfea1d5e946435015ba7ece94a38303056eb5e37f"
let corePackageName = "core"
// END KMMBRIDGE BLOCK FOR 'core'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'auth' (do not edit)
let remoteauthUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248070004.zip"
let remoteauthChecksum = "d0c47590be4b07ede5d4612486a09cb75e74ffbd60d85dffea17624591203482"
let authPackageName = "auth"
// END KMMBRIDGE BLOCK FOR 'auth'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'user' (do not edit)
let remoteuserUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248070181.zip"
let remoteuserChecksum = "4a162ce90efbdbdb0bb7cc77ad199aace1bdcd48827e6e7d69558a9288a7c2d6"
let userPackageName = "user"
// END KMMBRIDGE BLOCK FOR 'user'

let package = Package(
    name: corePackageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: corePackageName,
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

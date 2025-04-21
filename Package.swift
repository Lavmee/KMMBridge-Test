// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'core' (do not edit)
let remotecoreUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248074150.zip"
let remotecoreChecksum = "e01bbbcb40415eb2e7d45ad42a9d83b5a2819720bd26417d51a6df3aafa1f651"
let corePackageName = "core"
// END KMMBRIDGE BLOCK FOR 'core'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'auth' (do not edit)
let remoteauthUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248074123.zip"
let remoteauthChecksum = "9482b3e06ef834b06364e56639b32f038d1eea26c7782822335048bd4433e2ae"
let authPackageName = "auth"
// END KMMBRIDGE BLOCK FOR 'auth'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'user' (do not edit)
let remoteuserUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248074167.zip"
let remoteuserChecksum = "8dfda0a28fc253c9e88c10c61d331fd03d82f1bbb0c9a2dfe078b0cdd028c466"
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

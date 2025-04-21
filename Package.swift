// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'core' (do not edit)
let remotecoreUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248069459.zip"
let remotecoreChecksum = "870944eeda9f611ed9fc716ee30490a4017dfd389f67ba0907b90c7c699e0a27"
let corePackageName = "core"
// END KMMBRIDGE BLOCK FOR 'core'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'auth' (do not edit)
let remoteauthUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248069341.zip"
let remoteauthChecksum = "a8481ce7cfbe60fbbab2f7ac9def0b981da76c39b9f657b8a7336f3720b41bb5"
let authPackageName = "auth"
// END KMMBRIDGE BLOCK FOR 'auth'

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'user' (do not edit)
let remoteuserUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248069521.zip"
let remoteuserChecksum = "3d88f061aa6164770bb32c342a152fba6c0ea53d21103d72a376b518b580ab06"
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

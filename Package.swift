// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'user' (do not edit)
let remoteuserUrl = "https://api.github.com/repos/Lavmee/KMMBridge-Test/releases/assets/248055341.zip"
let remoteuserChecksum = "d9d0df846194d3da63e65cb7d21deca406728d6431b4dc1322f97f3d1b012435"
let userPackageName = "user"
// END KMMBRIDGE BLOCK FOR 'user'

let package = Package(
    name: userPackageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: userPackageName,
            targets: [userPackageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: userPackageName,
            url: remoteuserUrl,
            checksum: remoteuserChecksum
        )
        ,
    ]
)
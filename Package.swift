// swift-tools-version:5.8
import PackageDescription

let corePackageName = "core"
let authPackageName = "auth"
let userPackageName = "user"

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
            path: "./core/build/XCFrameworks/debug/\(corePackageName).xcframework"
        ),
        .binaryTarget(
            name: authPackageName,
            path: "./auth/build/XCFrameworks/debug/\(authPackageName).xcframework",
            dependencies: [corePackageName]
        ),
        .binaryTarget(
            name: userPackageName,
            path: "./user/build/XCFrameworks/debug/\(userPackageName).xcframework",
            dependencies: [corePackageName]
        ),
    ]
)
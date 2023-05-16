// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MKNavigationStack",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MKNavigationStack",
            targets: ["MKNavigationStack"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MKNavigationStack",
            dependencies: []),
        .testTarget(
            name: "MKNavigationStackTests",
            dependencies: ["MKNavigationStack"]),
    ]
)

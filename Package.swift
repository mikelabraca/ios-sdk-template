// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FRAMEWORK_NAME",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FRAMEWORK_NAME",
            targets: ["FRAMEWORK_NAME"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //.package(url: "git@github.com:SDWebImage/SDWebImage.git", from: Version(stringLiteral: "5.15.5"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FRAMEWORK_NAME",
            dependencies: []),
            //dependencies: [.product(name: "SDWebImage", package: "SDWebImage")]),
        .testTarget(
            name: "FRAMEWORK_NAMETests",
            dependencies: ["FRAMEWORK_NAME"]),
    ]
)

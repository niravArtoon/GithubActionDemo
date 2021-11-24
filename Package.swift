// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GithubActionDemo",
    
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GithubActionDemo",
            targets: ["GithubActionDemo"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         //.package(url: "url.git@github.com"http://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@github.com/Savanbeladiya/GithubActionDemo", .branch("main")),
        .package(url: "https://github.com/Savanbeladiya/GithubActionDemo", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GithubActionDemo",
            dependencies: ["GithubActionDemo"]),
        .testTarget(
            name: "GithubActionDemoTests",
            dependencies: ["GithubActionDemo"]),
    ]
)

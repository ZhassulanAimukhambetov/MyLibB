// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibraryB",
    products: [
        .library(
            name: "MyLibraryB",
            targets: ["MyLibraryB"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ZhassulanAimukhambetov/Alamofire.git", branch: "master")
    ],
    targets: [
        .target(
            name: "MyLibraryB",
            dependencies: [
                .product(name: "AlamofireOld", package: "Alamofire")
            ]
        ),
    ]
)

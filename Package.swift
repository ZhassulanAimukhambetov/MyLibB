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
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "5.9.1")
    ],
    targets: [
        .target(
            name: "MyLibraryB",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ]
        ),
    ]
)

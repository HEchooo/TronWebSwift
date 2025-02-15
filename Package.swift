// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TronWebSwift",
    platforms: [
        .iOS("10.0")
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TronWebSwift",
            targets: ["TronWebSwift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.18.0"),
         .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.4.2"),
         .package(url: "https://github.com/GigaBitcoin/secp256k1.swift.git", from: "0.10.0"),
         .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.16.2"),
         .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMinor(from: "5.3.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TronWebSwift",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                "CryptoSwift",
                .product(name: "secp256k1", package: "secp256k1.swift"),
                .product(name: "BigInt", package: "BigInt"),
                "PromiseKit"
            ]
        ),
        .testTarget(
            name: "TronWebSwiftTests",
            dependencies: ["TronWebSwift", "CryptoSwift"]),
    ]
)

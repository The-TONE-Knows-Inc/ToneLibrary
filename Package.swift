// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToneLibrary",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ToneLibrary",
            targets: ["ToneListen"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AudioKit/AudioKit.git", branch: "develop"),
        .package(url: "https://github.com/AudioKit/SoundpipeAudioKit.git", .upToNextMajor(from: "5.2.2")),
        .package(url: "https://github.com/AudioKit/DunneAudioKit.git", from: "5.2.2"),
        .package(url: "https://github.com/AudioKit/STKAudioKit.git", from:"5.2.1"),
        .package(url: "https://github.com/AudioKit/AudioKitUI.git", branch: "develop"),
        .package(url: "https://github.com/zoul/generic-json-swift", from: "2.0.1"),
        .package(url: "https://github.com/malcommac/SwiftLocation", from: "5.1.0"),
    ],
    targets: [
        .binaryTarget(name: "ToneListen", path: "./ToneListenFramewok.xcframework")
    ]
)

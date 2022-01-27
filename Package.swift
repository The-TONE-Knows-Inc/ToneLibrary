// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToneLibrary",
    platforms: [
        .iOS(.v14), .macOS(.v11)
    ],
    products: [
        .library(
            name: "ToneLibrary",
            targets: ["ToneListenWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AudioKit/AudioKit.git", .upToNextMajor(from: "5.3.0")),
        .package(url: "https://github.com/AudioKit/SoundpipeAudioKit.git", .upToNextMajor(from: "5.3.0")),
        .package(url: "https://github.com/AudioKit/DunneAudioKit.git", .upToNextMajor(from: "5.3.0")),
        .package(url: "https://github.com/AudioKit/STKAudioKit.git", .upToNextMajor(from: "5.3.0")),
//        .package(url: "https://github.com/AudioKit/AudioKitUI.git", from: "5.2.3"),
        .package(url: "https://github.com/zoul/generic-json-swift", from: "2.0.1"),
        .package(url: "https://github.com/malcommac/SwiftLocation", from: "5.1.0"),
    ],
    targets: [
        .target(
                    name: "ToneListenWrapper",
                    dependencies: [
                        .product(name: "AudioKit", package: "AudioKit"),
                        .product(name: "SoundpipeAudioKit", package: "SoundpipeAudioKit"),
                        .product(name: "SwiftLocation", package: "SwiftLocation"),
//                        .product(name: "AudioKitUI", package: "AudioKitUI"),
                        .product(name: "DunneAudioKit", package: "DunneAudioKit"),
                        .product(name: "STKAudioKit", package: "STKAudioKit"),
                        .product(name: "GenericJSON", package: "generic-json-swift"),
                        "ToneListen"
                    ],
                    path: "Sources/Wrapper",
                    publicHeadersPath: ""
               ),
        .binaryTarget(name: "ToneListen", path: "./Sources/ToneListen.xcframework")
    ]
)

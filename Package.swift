// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FFmpegBinary",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FFmpegBinary",
            targets: ["FFmpegBinaryWrapper"]
        )
    ],
    targets: [
        .target(
            name: "FFmpegBinaryWrapper",
            dependencies: ["FFmpegBinary"],
            path: "Sources/FFmpegBinaryWrapper",
            sources: ["shim.swift"]
        ),
        .binaryTarget(
            name: "FFmpegBinary",
            url: "https://github.com/Lucas9720/ffmpeg-full-spm/releases/download/1.0.7/FFmpeg.xcframework.zip",
            checksum: "3aafc58b201172e304258e9c28fb702fba57dcc1b4cfc47dcabf31ca22ac8b60"
        )
    ]
)

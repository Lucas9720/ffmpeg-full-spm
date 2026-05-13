// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FFmpeg",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "FFmpeg", targets: ["FFmpegWrapper"])
    ],
    targets: [
        .target(
            name: "FFmpegWrapper",
            dependencies: ["FFmpegBinary"],
            path: "Sources/FFmpegWrapper",
            sources: ["shim.swift"]
        ),
        .binaryTarget(
            name: "FFmpegBinary",
            url: "https://github.com/Lucas9720/ffmpeg-full-spm/releases/download/1.1.2/FFmpeg.xcframework.zip",
            checksum: "9bf54c1c1d6ea6121982bd558de120057d6f87d8edb3abad81f80d6f92995be4"
        )
    ]
)

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
            checksum: "CALCULA_EL_CHECKSUM_DE_FFmpeg_Nuevo.xcframework.zip"
        )
    ]
)

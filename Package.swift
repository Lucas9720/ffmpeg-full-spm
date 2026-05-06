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
            targets: ["FFmpegBinary"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "FFmpegBinary",
            url: "https://github.com/Lucas9720/ffmpeg-full-spm/releases/download/1.0.0/FFmpeg.xcframework.zip",
            checksum: "49bde2aeedaa308585741ce1381c7c83b5cf14ccee8ab36beef6447f9fd6c4e6"
        )
    ]
)

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
            url: "https://github.com/Lucas9720/ffmpeg-full-spm/releases/download/1.0.6/FFmpeg.xcframework.zip",
            checksum: "4c187e4292b06bf9ef08f8a5768f34426c556c979392f18f9294e7c806e94214"
        )
    ]
)

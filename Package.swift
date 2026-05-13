// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FFmpeg",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "FFmpeg", targets: ["FFmpeg"])
    ],
    targets: [
        .binaryTarget(
            name: "FFmpeg",
            url: "https://github.com/Lucas9720/ffmpeg-full-spm/releases/download/1.1.0/FFmpeg.xcframework.zip",
            checksum: "b1ae33f7ec5f6bf3d842ee01b853b797467722a773e8d5f7e90a35292f7095aa"
        )
    ]
)

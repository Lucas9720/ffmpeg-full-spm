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
            url: "https://github.com/Lucas9720/ffmpeg-full-spm/releases/download/1.0.10/FFmpeg.xcframework.zip",
            checksum: "d3b63bf41f9303ec728ec2cf104311cdaa38e8c664d108192270ec1e309f1f27"
        )
    ]
)

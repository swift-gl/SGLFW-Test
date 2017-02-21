import PackageDescription

let package = Package(
    name: "SGLFW-Test",
    dependencies: [
        .Package(url: "https://github.com/swift-gl/SGLFW.git", majorVersion: 0)
    ]
)

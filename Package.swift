// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "HSKChineseApp",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .executable(name: "HSKChineseApp", targets: ["HSKChineseApp"])
    ],
    targets: [
        .executableTarget(
            name: "HSKChineseApp",
            path: "Sources/HSKChineseApp" // 👈 Update this to point precisely to the folder path
        )
    ]
)
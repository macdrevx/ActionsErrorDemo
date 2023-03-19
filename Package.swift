// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ActionsErrorDemo",
    products: [
        .library(name: "ActionsErrorDemo", targets: ["ActionsErrorDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/GEOSwift/GEOSwift.git", from: "10.0.0")
    ],
    targets: [
        .target(name: "ActionsErrorDemo",
                dependencies: ["GEOSwift"]
        ),
        .testTarget(
            name: "ActionsErrorDemoTests",
            dependencies: ["ActionsErrorDemo"],
            resources: [
                .copy("Snapshot Images/envelope.png"),
                .copy("Snapshot Images/geometrycollection.png"),
            ]
        ),
    ]
)

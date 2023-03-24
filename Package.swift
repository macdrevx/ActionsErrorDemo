// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ActionsErrorDemo",
    products: [
        .library(name: "ActionsErrorDemo", targets: ["ActionsErrorDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/GEOSwift/geos.git", .branchItem("actions-error-demo"))
    ],
    targets: [
        .target(
            name: "ActionsErrorDemo",
            dependencies: ["geos"]
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

// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ActionsErrorDemo",
    products: [
        .library(name: "ActionsErrorDemo", targets: ["ActionsErrorDemo"]),
    ],
    dependencies: [
        .package(path: "../DynamicDependency")
    ],
    targets: [
        .target(
            name: "ActionsErrorDemo",
            dependencies: ["DynamicDependency"]
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

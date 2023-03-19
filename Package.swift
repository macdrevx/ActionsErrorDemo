// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ActionsErrorDemo",
    products: [
        .library(name: "ActionsErrorDemo", targets: ["ActionsErrorDemo"]),
        .library(name: "ActionsErrorDemoDependency", type: .dynamic, targets: ["ActionsErrorDemoDependency"]),
    ],
    targets: [
        .target(
            name: "ActionsErrorDemo",
            dependencies: ["ActionsErrorDemoDependency"]
        ),
        .target(
            name: "ActionsErrorDemoDependency"
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

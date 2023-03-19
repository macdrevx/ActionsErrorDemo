// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "DynamicDependency",
    products: [
        .library(name: "DynamicDependency", type: .dynamic, targets: ["DynamicDependency"]),
    ],
    targets: [
        .target(name: "DynamicDependency"),
    ]
)

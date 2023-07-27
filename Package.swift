// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "Qlift",
    products: [
        .executable(name: "qlift-uic", targets: ["qlift-uic"]),
        .library(name: "Qlift", targets: ["Qlift"]),
    ],
    targets: [
        .target(name: "Qlift", dependencies: ["CQlift"]),
        .target(name: "CQlift", dependencies: ["CQt6Widgets"]),
        .systemLibrary(name: "CQt6Widgets", pkgConfig: "Qt6Widgets"),
        .executableTarget(name: "qlift-uic")
    ],
    cxxLanguageStandard: .cxx17
)

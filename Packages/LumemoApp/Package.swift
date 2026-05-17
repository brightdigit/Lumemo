// swift-tools-version: 6.2
import PackageDescription

let package = Package(
  name: "LumemoApp",
  platforms: [
    .iOS(.v17),
    .macOS(.v14),
  ],
  products: [
    .library(name: "LumemoApp", targets: ["LumemoApp"])
  ],
  dependencies: [
    .package(path: "../LumemoKit")
  ],
  targets: [
    .target(name: "LumemoApp", dependencies: ["LumemoKit"])
  ]
)

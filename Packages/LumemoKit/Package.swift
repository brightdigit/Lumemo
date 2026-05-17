// swift-tools-version: 6.2
import PackageDescription

let package = Package(
  name: "LumemoKit",
  platforms: [
    .iOS(.v17),
    .macOS(.v14),
    .watchOS(.v10),
    .tvOS(.v17),
  ],
  products: [
    .library(name: "LumemoKit", targets: ["LumemoKit"])
  ],
  targets: [
    .target(name: "LumemoKit"),
    .testTarget(name: "LumemoKitTests", dependencies: ["LumemoKit"])
  ]
)

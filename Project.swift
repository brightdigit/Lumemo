import ProjectDescription

let project = Project(
  name: "Lumemo",
  packages: [
    .local(path: "./Packages/LumemoKit"),
    .local(path: "./Packages/LumemoApp")
  ],
  targets: [
    .target(
      name: "Lumemo",
      destinations: [.iPhone, .iPad],
      product: .app,
      bundleId: "com.brightdigit.Lumemo",
      deploymentTargets: .iOS("17.0"),
      infoPlist: .extendingDefault(with: [
        "CFBundleShortVersionString": "1.0",
        "CFBundleVersion": "1",
        "UILaunchScreen": .dictionary([:]),
      ]),
      sources: ["Sources/**"],
      dependencies: [
        .package(product: "LumemoKit", type: .runtime),
        .package(product: "LumemoApp", type: .runtime)
      ]
    )
  ]
)

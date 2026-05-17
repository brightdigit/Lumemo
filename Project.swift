import ProjectDescription

let project = Project(
  name: "Lumemo",
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
      sources: ["Sources/**"]
    )
  ]
)

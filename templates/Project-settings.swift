// From part-3-fastlane.md §9 — manual signing settings for the Lumemo target.
//
// Use the value of `lumemoSigning` as the `settings:` argument to your
// `.target(name: "Lumemo", ...)` call in Project.swift. This file is its own
// standalone Swift so the snippet type-checks; copy the `.settings(...)`
// expression (everything to the right of `=`) inline at the usage site.
//
// `CODE_SIGN_STYLE = Manual` plus the per-configuration
// PROVISIONING_PROFILE_SPECIFIER values tell Xcode to use the profiles match
// installed (named `match Development <bundle_id>` and `match AppStore
// <bundle_id>`) instead of automatic signing.

import ProjectDescription

let lumemoSigning: Settings = .settings(
  base: [
    "DEVELOPMENT_TEAM": "XXXXXXXXXX",
    "CODE_SIGN_STYLE":  "Manual",
  ],
  configurations: [
    .debug(
      settings: [
        "CODE_SIGN_IDENTITY":             "Apple Development",
        "PROVISIONING_PROFILE_SPECIFIER": "match Development com.brightdigit.Lumemo",
      ],
      xcconfig: .relativeToRoot("Config/Version.xcconfig")
    ),
    .release(
      settings: [
        "CODE_SIGN_IDENTITY":             "Apple Distribution",
        "PROVISIONING_PROFILE_SPECIFIER": "match AppStore com.brightdigit.Lumemo",
      ],
      xcconfig: .relativeToRoot("Config/Version.xcconfig")
    ),
  ]
)

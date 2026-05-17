// swift-tools-version: 6.2

import PackageDescription

// Declare the LumemoApp package — the SwiftUI views and screen flow.
//
// What it needs:
//   - a name
//   - platforms (only the Apple platforms that ship a UI)
//   - a library product exposing LumemoApp
//   - a dependency on the sibling LumemoKit package (using a local path)
//   - a target named LumemoApp that depends on LumemoKit

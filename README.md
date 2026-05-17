# Lumemo

A simple notes app built during the Swift Automation Workshop.

## About

Lumemo is a lightweight notes app for iOS that demonstrates how to build and automate a modern Swift app using industry-standard tools.

## Workshop Phases

| Phase | Branch | Topic |
|---|---|---|
| Start | [`main`](https://github.com/brightdigit/Lumemo/tree/main) | Base project |
| 1 | [`phase/01-mise`](https://github.com/brightdigit/Lumemo/tree/phase/01-mise) | Tool version management with mise |
| 2 | [`phase/02-xcode`](https://github.com/brightdigit/Lumemo/tree/phase/02-xcode) | Xcode project automation with Tuist |
| 3 | [`phase/03-packages`](https://github.com/brightdigit/Lumemo/tree/phase/03-packages) | Swift Package structure (Kit + App) |
| 4 | [`phase/04-fastlane`](https://github.com/brightdigit/Lumemo/tree/phase/04-fastlane) | Automated TestFlight with Fastlane |
| 5 | [`phase/05-ci`](https://github.com/brightdigit/Lumemo/tree/phase/05-ci) | CI/CD with GitHub Actions |

## Requirements

1. **Github account** with the ability to:
   - Create private repos (Match certificates)
   - Create public repos (the project)
   - Manage secrets
2. **App Store Connect account** (Admin or Account Holder role) for:
   - `fastlane produce`
   - Match
   - API keys
3. **Apple Developer Program membership** for:
   - Creating the app record
   - Running Match
   - Signing builds
4. **Xcode 26.4 or newer** on **macOS 26.4 or newer** (to stay on the latest tooling)
5. **Admin account on your Mac** to:
   - Install apps
   - Run command line tools

## Links

Curated list of every external tool, service, and reference used across the Lumemo workshop.

### Phase 1 — Mise

- [mise](https://mise.jdx.dev) — tool version manager
- [mise registry](https://mise.jdx.dev/registry.html) — browse installable tools
- [jdx/mise-action](https://github.com/jdx/mise-action) — GitHub Action used in Phase 5

### Phase 2 — Tuist

- [Tuist](https://tuist.dev) — Xcode project generation from Swift
- [toptal gitignore generator](https://www.toptal.com/developers/gitignore) — `xcode,swift,swiftpackagemanager,swiftpm,macos`
- [Privacy manifest files](https://developer.apple.com/documentation/bundleresources/privacy-manifest-files) — Apple docs
- [Entitlements](https://developer.apple.com/documentation/bundleresources/entitlements) — Apple docs

### Phase 3 — Swift Packages

- [Swift Package Manager](https://www.swift.org/package-manager/) — official docs
- [Swift Testing](https://developer.apple.com/xcode/swift-testing/) — test framework used in `LumemoKitTests`
- [git-subrepo](https://github.com/ingydotnet/git-subrepo) — develop a Swift Package in a parent repo and a standalone repo at the same time

### Phase 4 — Fastlane

- [Fastlane](https://fastlane.tools) — automation toolchain
- [Fastlane actions reference](https://docs.fastlane.tools/actions/) — every action by name
- [Fastlane Match](https://docs.fastlane.tools/actions/match/) — encrypted cert/profile sync
- [Bundler](https://bundler.io) — Ruby dependency manager for the `Gemfile`
- [Apple Developer account](https://developer.apple.com/account) — Team ID lives here (Membership Details)
- [App Store Connect](https://appstoreconnect.apple.com) — app records, TestFlight, API keys
- [App Store Connect API keys](https://appstoreconnect.apple.com/access/integrations/api) — Users and Access → Integrations

### Phase 5 — GitHub Actions

- [actions/checkout](https://github.com/actions/checkout)
- [jdx/mise-action](https://github.com/jdx/mise-action)
- [brightdigit/swift-build](https://github.com/brightdigit/swift-build) — composite action that collapses ~100 lines of CI into ~5
- [webfactory/ssh-agent](https://github.com/webfactory/ssh-agent) — load the deploy key for the certs repo
- [codecov/codecov-action](https://github.com/codecov/codecov-action) — coverage upload
- [GitHub-hosted macOS runner images](https://github.com/actions/runner-images/tree/main/images/macos) — preinstalled Xcode versions and simulator runtimes for each `macos-*` runner
- [GitHub Actions docs](https://docs.github.com/en/actions)
- [Encrypted secrets for Actions](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)

### Alternative Tools

- [Homebrew](https://brew.sh) — alternative installer for `mise` itself
- [Xcodegen](https://github.com/yonaskolb/xcodegen) — YAML-based alternative to Tuist
- [asccli](https://asccli.sh) — alternative App Store Connect CLI

### Companion Articles

- [Getting Started with Mise](https://brightdigit.com/tutorials/mise-setup-guide/)
- [Automating your Xcode Project (Tuist)](https://brightdigit.com/tutorials/tuist-xcode-project-setup/)

# Workshop reality — matches phase-04-fastlane/fastlane/Fastfile.
#
# Build and sign an App Store release archive (no upload). The `beta` lane
# composes this with `upload_to_testflight`, and phase-05 CI runs `archive`
# on PRs so signing/packaging failures surface before they reach main —
# so this lane has to do the full production flow, not a bare build_app.
#
# `build_app` (alias: `gym`) wraps `xcodebuild archive` + `-exportArchive`
# and produces a .ipa ready for TestFlight upload. sync_certificates(stage:
# "appstore") runs first to ensure the App Store signing identity is in
# the keychain before build_app runs.

desc "Build and sign a release archive (no upload)"
lane :archive do
  app_name = ENV.fetch("APP_NAME")  # from .env.default; app_identifier/apple_id come from Appfile
  setup_api_key
  setup_ci if ENV['CI']
  sync_certificates(stage: "appstore")  # ensure App Store identity is in the keychain
  clear_derived_data

  build_app(
    scheme:           app_name,
    configuration:    "Release",
    clean:            true,
    export_method:    "app-store",  # signs the artifact for App Store upload
    output_directory: "./build/release",
    output_name:      app_name,
    xcargs:           ENV["FASTLANE_XCARGS"]  # lets CI inject extra xcodebuild args
  )

  UI.success("✅ Release build complete!")
end

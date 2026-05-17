# From part-3-fastlane.md §7 — register the app in Developer Portal + ASC.
#
# Run once per app, before any signing work. Wraps fastlane's `produce` action,
# which calls the App Store Connect API to register the bundle ID in both the
# Developer Portal and App Store Connect. Idempotent — re-running on an
# already-registered app is a no-op.
#
# NOT CI-friendly: `produce` uses the legacy Spaceship-classic backend
# (Apple ID + 2FA cookie) and ignores APP_STORE_CONNECT_API_KEY_*. Run once
# locally with an Apple ID; every downstream lane is API-key-driven.

desc "Register app in Apple Developer Portal and App Store Connect"
lane :setup_app do
  app_name       = ENV.fetch("APP_NAME")
  app_identifier = CredentialsManager::AppfileConfig.try_fetch_value(:app_identifier)
  username       = CredentialsManager::AppfileConfig.try_fetch_value(:apple_id)
  team_id        = CredentialsManager::AppfileConfig.try_fetch_value(:team_id)
  itc_team_id    = CredentialsManager::AppfileConfig.try_fetch_value(:itc_team_id)

  produce(
    username:       username,
    app_identifier: app_identifier,
    app_name:       app_name,
    platform:       ENV.fetch("PRODUCE_PLATFORM"),
    team_id:        team_id,
    itc_team_id:    itc_team_id,
    skip_itc:       false  # also create the App Store Connect record
  )

  UI.success("✅ App registered in Developer Portal and App Store Connect!")
end

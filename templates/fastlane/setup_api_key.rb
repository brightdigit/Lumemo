# From part-3-fastlane.md §3 — App Store Connect API key auth.
#
# Authenticates against the App Store Connect API using a key generated in
# App Store Connect → Users and Access → Integrations. Avoids the
# interactive 2FA prompt that the Apple ID-based auth requires.
# No-op when credentials are absent so local-only lanes still work.
# APP_STORE_CONNECT_API_KEY_KEY must be the base64 of the .p8 file.

private_lane :setup_api_key do
  if ENV["APP_STORE_CONNECT_API_KEY_KEY_ID"]
    require 'base64'
    app_store_connect_api_key(
      key_id:      ENV["APP_STORE_CONNECT_API_KEY_KEY_ID"],
      issuer_id:   ENV["APP_STORE_CONNECT_API_KEY_ISSUER_ID"],
      key_content: Base64.decode64(ENV.fetch("APP_STORE_CONNECT_API_KEY_KEY"))
    )
  end
end

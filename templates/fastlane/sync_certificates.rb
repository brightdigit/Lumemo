# From part-3-fastlane.md §8 — pull signing identity + profile from match.
#
# One signing lane, parameterized by stage. Pulls the matching signing
# identity + provisioning profile from the encrypted certs repo and
# installs them in the local keychain. The `readonly` guard prevents CI
# from creating new certs — new certs should be generated locally where
# a developer can confirm 2FA, then committed to the certs repo.

desc "Sync certificates and provisioning profiles (stage: development|appstore)"
lane :sync_certificates do |options|
  stage = options.fetch(:stage)
  UI.user_error!("stage must be 'development' or 'appstore'") unless %w[development appstore].include?(stage)

  setup_ci if ENV['CI']
  setup_api_key

  match_opts = {
    type:           stage,
    readonly:       ENV["CI"] == "true",
    app_identifier: CredentialsManager::AppfileConfig.try_fetch_value(:app_identifier)
  }
  # macOS apps need an extra cert to sign the .pkg installer for the Mac
  # App Store. iOS/tvOS/watchOS .ipa bundles don't need this.
  if stage == "appstore" && ENV.fetch("PLATFORM") == "mac"
    match_opts[:additional_cert_types] = ["mac_installer_distribution"]
  end

  match(**match_opts)
  UI.success("✅ Certificates synced (stage: #{stage})!")
end

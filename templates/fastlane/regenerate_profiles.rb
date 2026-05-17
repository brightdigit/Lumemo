# From part-3-fastlane.md §11 — force-regenerate provisioning profiles.
#
# Run after adding a new capability (iCloud, Push, etc.) in the Developer
# Portal. `force: true` regenerates the profile to include the new
# capability. The cert is preserved.

desc "Force regenerate provisioning profiles (stage: development|appstore)"
lane :regenerate_profiles do |options|
  stage = options.fetch(:stage)
  UI.user_error!("stage must be 'development' or 'appstore'") unless %w[development appstore].include?(stage)

  setup_api_key

  match(
    type:           stage,
    force:          true,
    app_identifier: CredentialsManager::AppfileConfig.try_fetch_value(:app_identifier)
  )

  UI.success("✅ Provisioning profiles regenerated (stage: #{stage})!")
end

# From part-3-fastlane.md §11 — convenience wrapper for both stages.

desc "Force regenerate all provisioning profiles (development and appstore)"
lane :regenerate_all_profiles do
  regenerate_profiles(stage: "development")
  regenerate_profiles(stage: "appstore")
  UI.success("✅ All provisioning profiles regenerated!")
end

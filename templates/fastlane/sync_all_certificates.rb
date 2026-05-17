# From part-3-fastlane.md §8 — convenience wrapper for both stages.
#
# Useful on a fresh machine to install both the development and appstore
# signing identities in one command.

desc "Sync both development and appstore certificates"
lane :sync_all_certificates do
  sync_certificates(stage: "development")
  sync_certificates(stage: "appstore")
  UI.success("✅ All certificates synced!")
end

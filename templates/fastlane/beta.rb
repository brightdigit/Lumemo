# Workshop reality — matches phase-04-fastlane/fastlane/Fastfile.
#
# Composes the `archive` lane with `upload_to_testflight`. Phase-05 CI runs
# this lane on pushes to main (and runs `archive` alone on PRs), so every
# merge to main ships a TestFlight build.

desc "Push a new beta build to TestFlight"
lane :beta do
  archive
  upload_to_testflight
end

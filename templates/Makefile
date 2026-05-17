.PHONY: install-dependencies bundle-install generate test beta

install-dependencies:
	mise install

generate:
	mise exec -- tuist generate

test:
	swift test --package-path Packages/LumemoKit

## bundle-install
## Install the Ruby gems listed in Gemfile. Skip the work if everything is
## already installed.
bundle-install:

## beta
## Build the app and upload it to TestFlight via Fastlane. Make sure the
## Ruby gems are installed first.
beta:

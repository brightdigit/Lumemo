.PHONY: install-dependencies bundle-install generate test beta

install-dependencies:
	mise install

bundle-install:
	mise exec -- bundle check > /dev/null 2>&1 || mise exec -- bundle install

generate:
	mise exec -- tuist generate

test:
	swift test --package-path Packages/LumemoKit

beta: bundle-install
	mise exec -- bundle exec fastlane beta

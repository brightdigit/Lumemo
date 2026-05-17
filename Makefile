.PHONY: install-dependencies generate test

install-dependencies:
	mise install

generate:
	mise exec -- tuist generate

test:
	swift test --package-path Packages/LumemoKit

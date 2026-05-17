.PHONY: install-dependencies generate

install-dependencies:
	mise install

generate:
	mise exec -- tuist generate

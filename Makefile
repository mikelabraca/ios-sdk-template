bootstrap:
	@. setup-project.sh
	@rm setup-project.sh

release:
	@. scripts/cut-release.sh

.PHONY: bootstrap release
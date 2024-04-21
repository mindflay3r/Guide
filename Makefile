

build:
	mdbook build

serve:
	mdbook serve

# This will install a precommit hook to test your code
install-hook:
	echo "make build" > $$(git rev-parse --git-path hooks)/pre-commit && chmod +x $$(git rev-parse --git-path hooks)/pre-commit

uninstall-hook:
	rm $$(git rev-parse --git-path hooks)/pre-commit

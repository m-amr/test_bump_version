.PHONY: release major minor patch

release:
	@git checkout master
	@git merge dev
	@git push origin master
	@git push origin master --tags
	@git checkout dev
	@git push origin dev
	@git push origin dev --tags

major:
	@bumpversion major

minor:
	@bumpversion minor

patch:
	@bumpversion patch

install:
	@go get -v ./...
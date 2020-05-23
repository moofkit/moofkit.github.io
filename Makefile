start: bundle
	bundle exec middleman server

build: bundle
	bundle exec rake build

deploy:
	rm -rf build
	ALLOW_DIRTY=true BRANCH_NAME=master bundle exec rake publish

bundle: .make.bundle

.make.bundle: Gemfile Gemfile.lock
	bundle
	touch .make.bundle

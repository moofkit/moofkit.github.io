start: bundle
	bundle exec middleman server

build: bundle
	bundle exec rake build

deploy: build
	bundle exec rake publish

bundle: .make.bundle

.make.bundle: Gemfile Gemfile.lock
	bundle
	touch .make.bundle

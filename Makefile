bundle: .make.bundle
start: bundle
	bundle exec middleman server

.make.bundle: Gemfile.lock
	bundle
	touch .make.bundle

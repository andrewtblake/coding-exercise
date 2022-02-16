all: .rspec

.rspec:
	rspec --init

test: .rspec
	bundle exec rspec

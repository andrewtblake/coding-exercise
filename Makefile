all:
	gem install bundler
	bundle install
	rspec --init

test:
	bundle exec rspec

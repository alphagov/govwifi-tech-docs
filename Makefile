build:
	bundle install

serve: build
	bundle exec middleman server

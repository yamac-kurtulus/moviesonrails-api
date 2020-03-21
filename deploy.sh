#!/bin/sh
rake db:migrate
bundle install
bundle exec rails server -p 80

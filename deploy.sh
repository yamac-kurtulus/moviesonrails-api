#!/bin/sh
rake db:migrate
bundle exec rails server -p 80

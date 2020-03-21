#!/bin/sh
cd ./api
rake db:migrate
bundle exec rails server -p 80

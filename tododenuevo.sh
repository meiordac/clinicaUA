#!/bin/sh
bundle install
rake db:drop
rake db:create
rake db:migrate
rake db:seed
rails s

<img width="1125" alt="postit" src="https://user-images.githubusercontent.com/13613724/61484631-27b48600-a954-11e9-82fb-fbf4e5c24442.png">

## Overview
This is a social news and discussion application built using Rails, PostgreSQL,
and JavaScript. Feel free to try out the application by setting it up on your
local machine.

## Getting Started

### How to set up the application on development server
- Run `bundle install --without production` from the root directory to install
  ruby dependencies
- Run `yarn install` to install npm packages
- Run `rails db:setup` to setup the database
- Run `bin/rails server` or `rails s` to start a web server on your development
  machine to see/start the Rails application
- Navigate your browser to localhost:3000

## Features

* posts are associated with categories, author, and comments
* can vote on posts and comments
* click the post link goes to actual URL
* click on comments link brings you to more detailed page about the post
* click on categories tag show only posts associated with that category
* create new post via form that has form validations
* can login and logout, as well as register a new user
* has roles feature with permissions
* slugs or slugging for URLs
* add time_zone feature; time_zone will either default to PST or be in time zone
  user specifies

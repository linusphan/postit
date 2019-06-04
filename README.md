## Overview
This is a social news and discussion application built using Rails, PostgreSQL,
and JavaScript. [Heroku link](https://postit-linus.herokuapp.com/) is currently
down because web dynos have been scaled down to 0 for the moment. Feel free to
try out the application by setting it up on your local machine.

## Getting Started

### How to set up the application on development server
- Run `bundle install --without production` from the root directory to install
  ruby dependencies
- Run `yarn install` to install npm packages
- Run `rails db:setup` to setup the database
- Run `bin/rails server` or `rails s` to start a web server on your development
  machine to see/start the Rails application
- Navigate your browser to localhost:3000

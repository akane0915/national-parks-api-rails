# _National Parks API_

#### _This is a Rails API built with Ruby 2.4.1 and Rails 5.1.2.  It contains data about national and state parks.  July 21, 2017_

#### By _**Asia Kane**_

## Description

This is an API that includes data for national and state parks.  It features Serialization to return parks and activities nested within each park.  The application uses model scopes to return many custom endpoints.

Park information includes:
- name
- square mileage
- state
- date founded
- fauna
- activities

Endpoints:
- Endpoints for GET requests
- Endpoints for POST, PATCH, PUT, DELETE requests (Authenticated Users Only)
- Endpoints to allow users to search by park name, state, square miles, fauna, and year.
- An endpoint that randomly returns a park.
- An Endpoint that orders the parks by oldest date (date founded).

This API includes:
- Exception Handling for Errors and Success messages.
- Testing with request specs.
- Serialization (Active_Model_Serializers Gem) to return parks in JSON object form including nested Activities for each park.

## Database Seeding

The application is seeded using `faker`.  It seeds 40 parks and 2 activities for each park.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone https://github.com/akane0915/national-parks-api-rails`
* `cd national-parks-api-rails`
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

## API Sample Calls via Postman

Run `bundle exec rails s` in your terminal

Base URL: localhost:3000/

* GET localhost:3000/parks
* GET localhost:3000/parks/1
* GET localhost:3000/parks/1/activities
* GET localhost:3000/parks?name=star
* GET localhost:3000/parks?year=1914




`JSON.parse(RestClient.get 'http://localhost:3000/universities')`

`JSON.parse(RestClient.patch 'http://localhost:3000/universities/1', {name: 'updated', description: 'desc', population: 2000, mascot: 'manbearpig'}, headers={authorization: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.MiSLJdKnnL-RB1pbM4VyqRzr629ojXQ0sXCSnWjcvI0'})`

`JSON.parse(RestClient.post 'http://localhost:3000/universities', {name: 'uni', description: 'desc', population: 2000, mascot: 'manbearpig'}, headers={authorization: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.MiSLJdKnnL-RB1pbM4VyqRzr629ojXQ0sXCSnWjcvI0'})`

`JSON.parse(RestClient.delete 'http://localhost:3000/universities/1', headers={authorization: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.MiSLJdKnnL-RB1pbM4VyqRzr629ojXQ0sXCSnWjcvI0'})`

### Review Calls

`JSON.parse(RestClient.get 'http://localhost:3000/universities/1/reviews/1')`

`JSON.parse(RestClient.patch 'http://localhost:3000/universities/1/reviews/1', {author: 'updated-author'}, headers={authorization: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.MiSLJdKnnL-RB1pbM4VyqRzr629ojXQ0sXCSnWjcvI0'})`

`JSON.parse(RestClient.post 'http://localhost:3000/universities/1/reviews', {author: 'Mr. NiceGuy, No-Mo', content: 'not the best school.', rating: 2 }, headers={authorization: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.MiSLJdKnnL-RB1pbM4VyqRzr629ojXQ0sXCSnWjcvI0'})`

`JSON.parse(RestClient.delete 'http://localhost:3000/universities/1/reviews/1', headers={authorization: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.MiSLJdKnnL-RB1pbM4VyqRzr629ojXQ0sXCSnWjcvI0'})`


## Development server

Run `bundle exec rails s` for a dev server. Test API endpoints using postman. The app will automatically reload if you change any of the source files.

* If you would like to make changes to this project, do so in a text editor.
* Make frequent commits with detailed comments.
* Submit changes as pull request to Asia at akane0915 on Github.

## Running tests

This app uses RSpec and Shouldamatchers for testing.
Run `bundle exec rspec` in terminal to test.

## Technologies Used

* Ruby
* Rails
* JWT Gem
* Devise
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* HTML
* CSS
* Bootstrap
* ES6

## Known Bugs
_N/A_

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Asia Kane at asialkane@gmail.com with questions._

### License
*This software is licensed under the MIT license*
Copyright © 2017 **Asia Kane**

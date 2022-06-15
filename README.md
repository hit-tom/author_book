# READMEThis README would normally document whatever steps are necessary to get the
application up and running.Things you may want to cover:* Ruby version* System dependencies* Configuration* Database creation* Database initialization* How to run the test suite* Services (job queues, cache servers, search engines, etc.)* Deployment instructions* ...## General information**testjob** is an application used for importing Authors data which is in .csv file to our database and then providing that Authors paginated data via an HTTP REST API.## Getting StartedThese instructions will get you a copy of the project up and running on your local machine for development and testing purposes.### PrerequisitesTo run the project locally you should have following software installed on your machine:-Ruby 2.6.5
-Ruby-bundler
-PostgreSQL 10+### Installing and configuring app#### Step 1: In your terminal, navigate to your projects directory and clone this repository```shell
cd YOUR-RAILS-PROJECTS
git clone https://github.com/hit-tom/author_book.git
```#### Step 2: Now navigate to the created directory `testjob` and run `bundle install && npm install````shell
cd testjob
bundle install && yarn install
```#### Step 3: Set up databasesFirst configure your database.yml file giving your username and password of postgresql and a name of your choise in databaseRun the following commands-```shell
rails db:create db:migrate
```## Running app```shell
rails s
```## Testing InstructionFor running test please run the following command:```shell
bundle exec rspec
```## API Documentation
1.	EndPoints:	https://evening-citadel-48438.herokuapp.com/authors
	Request type: GET
	Headers: No additional headers required
	Authorization: Not Required
	Params: Not Required2.	EndPoints:	https://evening-citadel-48438.herokuapp.com/books
	Request type: GET
	Headers: No additional headers required
	Authorization: Not Required
	Params: page, per_page3.	EndPoints:	https://evening-citadel-48438.herokuapp.com/books
	Request type: POST
	Headers: No additional headers required
	Authorization: Not Required
	Params: name, publication_year, edition, author_ids4.	EndPoints:	https://evening-citadel-48438.herokuapp.com/books/:id
	Request type: GET
	Headers: No additional headers required
	Authorization: Not Required
	Params: Not Required5.	EndPoints: https://evening-citadel-48438.herokuapp.com/books/:id
	Request type: PATCH
	Headers: No additional headers required
	Authorization: Not Required
	Params: Not Required6.	EndPoints:/books/:id
	Request type: DELETE
	Headers: No additional headers required
	Authorization: Not Required
	Params: Not Requiredpostman_link: https://www.getpostman.com/collections/fd38bac5aada14667e19
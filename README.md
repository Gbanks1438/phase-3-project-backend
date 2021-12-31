# Phase 3 Project Guidelines

## Learning Goals

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

Congrats on getting through all the material for Phase 3! Now's the time to put
it all together and build something from scratch to reinforce what you know and
expand your horizons.

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

For this project, you must:

- Use Active Record to interact with a database.
- Have a minimum of two models with a one-to-many relationship.
- Create API routes in Sinatra that handles at least three different CRUD
  actions for at least one of your Active Record models.
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary.

For example, build a todo list application with a React frontend interface and a
Sinatra backend API, where a user can:

- **Create** a new todo
- **Read** a list of all todos
- **Update** an individual todo
- **Delete** a todo

A `Todo` can be tagged with a `Category`, so that each todo _belongs to_ a
category and each category _has many_ todos.

## Getting Started

### Backend Setup

This repository has all the starter code needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

[fork link]: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork

The `app/controllers/application_controller.rb` file has an example GET route
handler. Replace this route with routes for your project.

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Frontend Setup

Your backend and your frontend should be in **two different repositories**.

Create a new repository in a **separate folder** with a React app for your
frontend. `cd` out of the backend project directory, and use
[create-react-app][] to generate the necessary code for your React frontend:

```console
$ npx create-react-app my-app-frontend
```

After creating the project locally, you should also
[create a repository on GitHub][create repo] to host your repo and help
collaborate, if you're working with a partner.

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data));
```

## Project Tips

- This project is intended to focus more on the backend than the frontend, so
  try and keep the React side of things relatively simple. Focus on working with
  Active Record and performing CRUD actions. What are some interesting queries you can write? What kinds of questions can you ask of your data?
- Once you have a project idea, come up with a domain model and decide what
  relationships exist between the models in your application. Use a tool like
  [dbdiagram.io][] to help visualize your models.
- Decide on your API endpoints. What data should they return? What kind of CRUD
  action should they perform? What data do they need from the client?
- Use [Postman][postman download] to test your endpoints.
- Use `binding.pry` to debug your requests on the server. It's very helpful to use a
  `binding.pry` in your controller within a route to see what `params` are being
  sent.
- Use the [Network Tab in the Dev Tools][network tab] in the frontend to debug
  your requests.

## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/

<!-- MY NOTES -->
<!-- Anticipated Steps:
Clone both frontend and backend files down
Open the main directory in a terminal and run bundle install
Open a second terminal for the frontend
Run npm i && npm start for frontend in the first terminal and open in browser
Run bundle exec rake server for the backend in the second terminal and open in browser
*Figure out the models and migrations diagram before coding
Open a third terminal to the project directory to run commands
Run bundle exec rake db:create_migration NAME=create_examples for the corresponding migrations
Write the migration table logic in the migration file
Create the files for the models
Set up Active Record Associations
Set up seed file
Run bundle exec rake db:migrate to load up the tables
Run bundle exec rake db:migrate:status to verify all tables are Up
Run bundle exec rake db:seed
Work on associate methods logic
Work on CRUD methods
Set up buttons and forms on the front end to interact with the tables
Work on css for styling -->

<!-- NOTES
You can start your server with:
$ bundle exec rake server
This will run your server on port http://localhost:9292


Your React app should make fetch requests to your Sinatra backend!

fetch example:
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data)); -->

  <!-- DIAGRAM
                                                    Hotels 
                                              has_many reservations
                                                  id: integer
                                                  name: string
                                                  address: string
                                                  fireplaces: integer
                                                  rooms: integer
                                                  max_guests: integer
                                                  has_modern_amenities: boolean
                                                  is_lakeside: boolean
                                                          |
                                                          |				
                                                          |						
                                                          |								
       										                        belongs_to :hotels											
										                              belongs_to :guests											
has_many :reservations					                  belongs_to :rooms			              		  has_many :reservations
has_many :rooms, through::reservations			              |							                    has_many :guests, through::reservations
						 |                                            |                                               |
          Guests  	- 	 -  	 - 	   -  	 -    -   -  Reservations    -       -      -      -       -	Rooms
          id: integer						                    id: integer					                            id: integer	
          first_name: string				  	            guest_id: integer				                        floor_num: integer	
          last_name: string				    	            room_id: integer			                          num_of_beds: integer
          party_size: integer			    	            hotel_id: integer				                        bed_size: string	
          reason_for_stay: string		                date_start: integer			                        has_ensuite: boolean
                                                    date_end: integer
                                                    is_available: boolean
	 -->

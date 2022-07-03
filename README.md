# Beasts of War - Animal Shelter API

#### An Independent Project for Ruby on Rails - Building an API. 
##### Exercising our skills in building API endpoints, adding routes, concerns, modules, handling exceptions and adding success messages. Passing parameters into a GET route, utilizing FactoryBot for DRY and thorough testing of the Rails API. Providing CRUD functionality with proper documentation.

#### By Rosie Gardner

## Technologies Used

* Ruby
* Rails
* Active Record
* Postgres
* Gem
* Faker
* Pry
* Rspec
* Will_Paginate
* Shoulda-Matchers
* FactoryBot

## Setup/Installation Requirements

* https://github.com/rosiegardner/beasts_of_war_api.git
* Clone or download this repository onto your desktop
* Navigate to the top-level of directory
* Open VScode or preferred text editor.
* CD into root directory
* Open terminal, run: 
* `bundle install` 
* `rake db:setup` to create, migrate, and seed database.
* `rails s` to run server
* Open Postman or preferred API development platform:
* `http://localhost:3000/beasts`

## API Endpoints

| Method |   URL  | Result |
| :---   | :----: |  -----:  |
| GET    | `localhost:3000/` | Returns a list of raw json data |
| GET    | `localhost:3000/beasts` | Returns a list of all Beasts in alphabetical order by name and their parameters => `id`, `daemon`, `breed`, `name`, `age`, `desc`, `available` |
| GET    | `localhost:3000/beasts/6` | Returns all information related to Beast with `id=6` |
| GET    | `localhost:3000/beasts?name=Mis` | Returns a Beast by `name` or `name ilike?` => 'Misty' |
| GET    | `localhost:3000/beasts?page=4` | Returns a list of 10 Beasts per page |
| POST   | `localhost:3000/beasts?daemon=shadow cat&breed=sabertooth&name=scud&age=666&desc=a foul hunter` | Adds a Beast to the database => `id: 183`, `daemon: shadow cat`, `breed: sabertooth`, `name: scud`, `age: 666`, `desc: "a foul hunter"`, `available: true` => If `POST` is successful, returns database object for newly created Beast. |
| PUT/PATCH | `localhost:3000/beasts/183?name=scud the slug` | Updates the name for a Beast with `id=183`. If PUT/PATCH is succesful, returns database object for newly updated Beast. |
| DELETE | `localhost:3000/beasts/183` | Deletes the Beast with `id=183` from database |

## Known Bugs

* NO KNOWN BUGS

## License

MIT

Copyright (c) 2022 Rosie Gardner, Email: <rosiegardner78@gmail.com>


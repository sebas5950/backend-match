# Smash or Pass Backend

## Introduction

Welcome to the backend of Smash or Pass, a dating app created by Alex Guanipatin, John Garbero, Julian Leal. Here, you will find the resources to start up the backend server.

## Setup

1. Fork and clone this repository.
2. CD into this respective folder on your computer.
3. Run `bundle install` in your terminal.
4. Run `rake server` to start the backend server.

And then you are good to go! To access the frontend setup of Smash or Pass, click [here](https://github.com/sebas5950/ship-it-or-sink-it/blob/main/README.md).

## Features

### Controllers, models, and instances

- `Get`, `Post`, `Patch`, and `Delete` requests for the frontend of our server.
- `Match` belongs to both `User` and `Profile`. `User` has many matches and many profiles through matches, and `Profile` has many matches and users through matches.
- `Match` has a class method, `.check_match`, that allows us to find or create a match instance according to the given `user_id` and `profile_id`. 
- User has several instance methods.
  - `#all_matches` allows us to find each of the profiles associated with the users given matches.
  - `#potential_matches` allows us to find all of the matches where the user has not swiped yet.
  - `#not_swiped` allows us to find the first among all potential matches.

### Database

- Tables with necessary columns and rows to contain our data.
- `Faker` data used for the users, matches, and profiles.

## Tech Stack

- ActiveRecord
- Sinatra
- Faker

# Ruby People
A Ruby application to manage people in an organization (just for learning Ruby)

## Setup

```
$ git clone git@github.com:dmatthew/ruby_people.git
$ cd ruby_people
$ vagrant up
```

## Running the application

```
$ vagrant ssh web
$ cd /vagrant
$ bundle install
$ rails server -b 192.168.42.10
```

Then go to 192.168.42.10:3000 to see the application.

## Tech Stack

* Ruby on Rails
* MongoDB

# README

## About
Website for online bookings at Pear Blossom Homestay.

## Installation

### Install Ruby
Using [rbenv](https://github.com/rbenv/rbenv) to install ruby:

`rbenv install 3.0.1 --verbose`


You may need to install some required packages that do not come preinstalled.

`sudo apt install gcc make libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev`

For MacOS you can install [Xcode](https://developer.apple.com/xcode/). Xcode will install many programs that are needed for Ruby 

### Install Rails

Using ruby gems:

`gem install rails`


### Run the Application

Install all the bundles from the project directory:

`bundle install`

Migrate the database:

`rails db:migrate`

Run the server

`rails server`

Open https://locahost:3000



## Technology used

* Ruby version 3.0.1

* Rails version 6.1.3.2

* Gems:
  * Sorcery 0.16.1 - Authentication
  * paperclip 6.1.0 - Upload management
  * Rails_admin 2.1.1 - Admin Panel
  * bulma-rails 0.9.1 - CSS   

* Database: 
  SQLite 1.4.2

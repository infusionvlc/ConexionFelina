# Setting up the development environment

Hey! :wave: We are so glad you want to help us shape a better future for
street cats. Here you'll find some notes on how to install the web application
on your computer. Let's get started! :rocket:

## Installing Ruby on Rails
Please, follow along the instructions for yor OS (**INSTALL POSTGRESQL**)

https://gorails.com/setup/

## Cloning the repo locally
Create a fork of this repo and clone it into your PC:
`git clone https://github.com/your_user/ConexionFelina.git`

## Installing bundled gems
Run `bundle install` inside the 'ConexionFelina' app directory.

## First run
1. `rails db:create`
2. `rails db:migrate`
3. `rails db:seed`

If you want to migrate and populate the test database too you should
add `RAILS_ENV=TEST` at the end of the 2º and 3º commands and execute them.

`rails s`


## Configuring postgresql on linux (ubuntu)
1. Run `sudo -u postgres createuser --interactive`
   Use as username your OS account name
   Type "y" to be superuser
2. Run `sudo -u [your OS account name] createdb conexion_felina_test`

## Configuring postgreSQL on Mac OS
1. `createuser -s -r postgres`

## Front-end development Environment

### Installing the required tools
- To install Node.js

  `brew install node`

- To install Yarn

  `brew install yarn`

- To install Storybook and other dependencies

  `npm install`

  `yarn install`

Please, checkout our [conventions guidelines](conventions.md) to know more
about our code quality specs and how to run tests.
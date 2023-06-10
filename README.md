# Welcome to CRM Service

Hi!. If you want to learn about running our CRM Service, you can read me. This README would normally document whatever steps are necessary to get the application up and running.

# Introduction
We (Team - 1234 Pixel Legion) the students of Texas A&M University as a part of our CSCE 606 Software Engineering Course have build a CRM service which is a Customer Relationship Management Service for .NXT industries. This service helps to better connect with customers, partners and potential customers. It also allows us to track customer activities and market to customers as well. This service provides a User dashboard to view important user data.

# CRM Service

![image](https://www.crmservices.com.br/assets/images/Logotipo-CRM.png)

This application is built using Ruby on Rails equipped with JavaScript, HTML and CSS. 

  

![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)![Bootstrap](https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white)
 

  

## Installation

  

To setup Rails Environment(First time only, skip this step if you have the setup already.)

Bundler is required for running rails application:

> gem install bundler

To install necessary gems for the applications use:

> bundle install

  

Note: `Gemfile` has the required gems for this application. Do  update the file to add newly installed gems.

  

To run db migrations:

> rake db:create

>rake db:migrate

Note: Migrations are to be run for the first time and only when there's a change in Database models

  

To run the server:

> rails s

Visit http://127.0.0.1:3000 to see the Application running.

  

## Code Structure

![File Structure](https://user-images.githubusercontent.com/111816356/205510823-764bff93-cc27-488b-be09-9d8ecf082f35.png)


# Development and Test
1. Make required changes in the controller, models, views folders and update the paths in routes.rb file. 
2. Check your changes are effective or not by running 
>rails s

3. For testing unit test cases use:
> rails test \<filename>

# Commit to Github
After making the changes, follow the below commands to push the changes to the Github Repository.

For staging the files:
> git add \<filename>

For commiting the files:
>git commit -m \"\<your commit message>"

For pushing to the repository
>git push origin master

# Deployment
We have deployed our application on Heroku

1. Deployment guide for rails application :
https://devcenter.heroku.com/articles/getting-started-with-rails6
2. Procfile is required for Heroku deployment. Create a Procfile with the below data in it
>web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
3. After pushing the changes to Github, Run db migrations:
> heroku run rake db:migrate

Note: Migrations are to be run for the first time and only when there's a change in Database models
 
4. Make your changes live on Heroku using the command:
 >git push heroku main


### Commands used by us for creating this application:
- yarn add @rails/webpacker\nbundle update webpacker
- rm -rf bin/webpack*
- bundle exec rails webpacker:compile
- export NODE_OPTIONS=--openssl-legacy-provider
- bundle exec rails webpacker:compile
- rails server
- unset NODE_OPTIONS
- heroku stack:set heroku-20
- git init && git add . && git commit -m "init"
- heroku create
- git push heroku main
- rails g controller Users
- rails g controller Sessions
- rails g controller Crms  
- rails g model User name:string email:string password:digest
- rake db:create
- rake db:migrate
- rails s
- git add . && git commit -m "new"
- git push heroku main
- heroku run rake db:migrate
- heroku ps:scale web=1


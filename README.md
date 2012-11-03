# Rails Demo App

## start
`rails new dnugbooks`

`git init`

`git add .`

`git commit -m "start with plain new rails app"`


## Cleanup
`/remove # from therubyracer in Gemfile`

`rm public/index.html`

`git commit -a -m "cleanup"`


## Add Twitter Bootstrap
`/add   gem 'twitter-bootstrap-rails' to Gemfile` 

`bundle`

`rails g bootstrap:install`

`rails g bootstrap:layout bookapp fluid`

`/merge app/views/layouts/bookapp.html.erb into app/views/layouts/application.html.erb`

`rm app/views/layouts/bookapp.html.erb`

`git add . && git commit -a -m "add Twitter Bootstrap"`


## Add Book and Author
`rails g scaffold book title:string isbn:string description:string`

`rails g scaffold author lastname:string firstname:string twitter:string`

`rails g model authorship author:references book:references`

`rake db:create && rake db:migrate`

`rails g bootstrap:themed books`

`rails g bootstrap:themed authors`

`/add paths to routes.rb and application.html.erb`

`git add . && git commit -a -m "add book and author"`


## Add n:m Relations
`/add authorship to book and author`

`/add _authors_fields to book`

`/add link-helpers to application_helper`

`/add js helpers to application.js`

`git add . && git commit -a -m "add n:m relationship"`


## Add MiniProfiler
`/add gem 'rack-mini-profiler' to Gemfile`

`bundle`

`/add before_filter to ApplicationController`

`git add . && git commit -a -m "add MiniProfiler"`


## Add Paging
`/add gems will_paginate & bootstrap-will_paginate to Gemfile`

`bundle`

`/add paging to author & book (2 different ways)`

`/add pager to index views`

`git add . && git commit -a -m "add Paging"`


## Deploy to Heroku
`/add pg to Gemfile and use sqlite only in dev`

`bundle`

`git add . && git commit -a -m "prepare deployment to Heroku"`

`/usr/local/heroku/bin/heroku create`

`heroku addons:add heroku-postgresql`

`git push heroku master`

`heroku run rake --trace db:migrate`

`heroku logs`


## Add image upload

`/add paperclip to Gemfile`

`bundle`

`rails generate paperclip book cover`

`rake db:migrate`

`/add cover to book`

`/add show_cover to BookHelper`

`/add image selector to book form`

`/add cover column to book index`

`git add . && git commit -a -m "add image upload"`


## Add ActiveAdmin

`/add activeadmin to Gemfile`

`bundle`

`rails generate active_admin:install`

`/change password in db/migrate/**_devise_create_admin_users.rb`

`rake db:migrate`

`rails generate active_admin:resource book`

`rails generate active_admin:resource author`

`/add link to app/views/layouts/application.html.erb`

`/add config/initializers/kaminari.rb to fix paging bug`

`/add custom part to dashboard.rb`

`git add . && git commit -a -m "add ActiveAdmin"`
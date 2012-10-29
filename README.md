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

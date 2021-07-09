# INSTAGRAM CLONE

https://www.youtube.com/watch?v=dqjF3C9A-Yg&list=PL-1jnVsiYID5HpCRxhsfEuscBXWrWuB6s&index=1


## Version
- ruby 3.0.1p64 (2021-04-05 revision 0fb782ee38) [x86_64-linux]
- Rails 6.1.4

## System dependencies

## Configuration

## Database creation
```sh
$ gem install pg
$ sudo apt-get update
$ sudo apt install postgresql postgresql-contrib libpq-dev
# Create a new database role
$ sudo -u postgres createuser -s dynamic -P
```
Instead of dynamic use the linux username you are logged in with.

In file `config/database.yml`:
```yaml
...
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: dynamic
  password: your password here

development:
  <<: *default
  database: appname_development

```
Instead of dynamic use the linux username you are logged in with

## Database initialization
```sh
$ rails db:create
$ rails db:migrate

```

## How to run the test suite

## Services (job queues, cache servers, search engines, etc.)

## Deployment instructions
Run in terminal:
```sh
$ rake webpacker:install
$ sudo service postgresql start
```

## References
- https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-18-04
- Bootstrap Bare Template - https://startbootstrap.com/template/bare

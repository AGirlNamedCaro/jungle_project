# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


!["Home page view - Jungle"](https://github.com/AGirlNamedCaro/jungle_project/blob/master/img/Screen%20Shot%202020-03-11%20at%209.39.31%20AM.png?raw=true)

!["Product detail page"](https://github.com/AGirlNamedCaro/jungle_project/blob/master/img/Screen%20Shot%202020-03-11%20at%209.39.41%20AM.png?raw=true)

!["My cart page"](https://github.com/AGirlNamedCaro/jungle_project/blob/master/img/Screen%20Shot%202020-03-11%20at%209.39.58%20AM.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe



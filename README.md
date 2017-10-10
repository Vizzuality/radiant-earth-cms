# Radiant Earth - CMS powered by Rails ActiveAdmin

## Dependencies

* Ruby 2.4.1
* Rails 5.1.3
* [Rails ActiveAdmin](https://activeadmin.info/)
* [Devise for authentication](https://github.com/plataformatec/devise)
* [Active Models Serializers to serialize the API responses](https://github.com/rails-api/active_model_serializers)
* PostgreSQL
* [Paperclip for attachment management](https://github.com/thoughtbot/paperclip)


## Setting up for development

1. `git clone git@github.com:Vizzuality/radiant-earth-cms.git`
2. `cd radiant-earth-cms`
3. `bundle install`
4. `rails db:create`
5. `rails db:migrate`
6. `rails db:seed` # sets an admin user: admin@example.com ; password
7. `rails server`
8. Point your browser to `http://localhost:3000/admin`

## Deployment

When deploying this application on a server besides having ruby, postgresql and
the necessary gens installed (with `bundle install`), you will also need to
make sure to have a database available and to run the migrations each time
a new deployment happens. Besides this the app also uses the Rails Asset Pipeline
so assets need to be precompiled after each new deploy, with the following command:

`rails assets:precompile`

[Read more about the assets pipeline.](http://guides.rubyonrails.org/asset_pipeline.html)

You will also need to have the environment variable: `RAILS_ENV` set to `production`:

`export RAILS_ENV=production`

If you prefer not to have this set for the whole system you can prefix all the
rails commands with `RAILS_ENV=production rails [command]`.

Example sequence of commands on our automatic deploy pipeline:

```
rails db:create
rails db:migrate
rake assets:precompile
rails server
```



## Database Models

This CMS is very simple and includes three types of data:

### Board Members

Used to board of directors. The attributes for this model are:

* name [string]
* email [string]
* title [string]
* description [text]
* is_board_chair [boolean]
* image [file attachment]

### Members

Used to represent staff, board of directors and others. The attributes for this
model are:

* name [string]
* email [string]
* title [string]
* category [string] (one of the ones specified inside: [app/models/member.rb](app/models/member.rb) in the constant `CATEGORIES`
* description [text]
* image [file attachment]

### Posts

Used to represent stubs of news articles, blog posts and other relevant links,
content will be stubbed in this project and linked to the source material.
The attributes are:

* url [string] (of the original content)
* title [string]
* short_description [text]
* video_url [string] (if there's a video to be displayed).
* image [file attachment]
* category [string] (one of the ones specified inside: [app/models/post.rb](app/models/post.rb) in the constant `CATEGORIES`


### Use Cases

Represent examples of use cases and community testimonials. Include the following
attributes:

* author [string]
* quote [string]
* description [text]
* signature [string]
* video_url [string] (if there's a video to be displayed).
* image[file attachment]
* category [string] (one of the ones specified inside: [app/models/use_case.rb](app/models/use_case.rb) in the constant `CATEGORIES`

### Vacancies

Represent vacancies at Radiant.Eearth. Include the following attributes:

* title [string]
* url [string]
* active [boolean]

## The API

This project includes a simple API that exposes all types of content and which
will be primarily consumed by Radiant.Earth's marketing website.


The existing endpoints are:

### Posts

`GET /api/v1/posts?category=y`

Returns all the posts sorted by `created_at` date. This endpoint also allows
filtering by the attribute _category_.

Posts can be paginated by passing the params:

* page=x
* per_page=y (default 25 per page)

### Members

`GET /api/v1/members?category=y`

Returns all members sorted by `name`. This endpoint also allows filtering by
 _category_.

### Board Members

`GET /api/v1/board_members`

Returns all members sorted by `last name` with members with `is_board_chair`
flag showing up first.

### Use Cases

`GET /api/v1/use_cases?category=y`

Returns all use_cases sorted by `created_at` date. This endpoint also allows
filtering by the attribute _category_.

Use cases can be paginated by passing the params:

* page=x
* per_page=y (default 25 per page)


### Vacancies

`GET /api/v1/vacancies`

Returns all the active vacancies, sorted by `created_at` date.

Vacancies can be paginated by passing the params:

* page=x
* per_page=y (default 25 per page)

# Radiant Earth - CMS powered by Rails ActiveAdmin

## Dependencies

* Ruby 2.4.1
* Rails 5.1.3
* Rails ActiveAdmin
* Devise for authentication
* Active Models Serializers to serialize the API
* PostgreSQL
* Paperclip for attachment management


## Setting up for development

1. `git clone git@github.com:Vizzuality/radiant-earth-cms.git`
2. `cd radiant-earth-cms`
3. `bundle install`
4. `rails db:create`
5. `rails db:migrate`
6. `rails db:seed` # sets an admin user: admin@example.com ; password
7. `rails server`
8. Point your browser to `http://localhost:3000/admin`


## Database Models

This CMS is very simple and includes three types of data:

### Members

Used to represent staff, board of directors and others. The attributes for this
model are:

* name [string]
* email [string]
* title [string]
* category [string] (one of the ones specified inside: [app/models/member.rb](app/models/member.rb) in the constant `CATEGORIES`
* description [text]
* is_board_member [boolean] (A user might be in the `Staff` category and also be a `Board Member`). Board members that are just Board members should have this flag set to true and have category `Board of Directors`
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


## The API

This project includes a simple API that exposes all types of content and which
will be primarily consumed by Radiant.Earth's marketing website. The existing
endpoints are:


`GET /api/v1/posts?category=y`

Returns all the posts sorted by `created_at` date. This endpoint also allows
filtering by the attribute _category_. *TODO*: Add pagination.


`GET /api/v1/members?is_board_member=x&category=y`

Returns all members sorted by `name`. This endpoint also allows filtering by the
attributes _is_board_member_ and _category_ *TODO*: might be relevant to add a different
type of grouping.


`GET /api/v1/use_cases`

Returns all use_cases sorted by `created_at` date. *TODO* Might be relevant to
add pagination and some kind of filtering.

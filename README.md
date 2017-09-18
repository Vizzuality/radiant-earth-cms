# Radiant Earth - CMS powered by Rails ActiveAdmin

## Dependencies

* Rails 5.1.3
* Rails ActiveAdmin
* Devise for authentication
* Active Models Serializers to serialize the API
* PostgreSQL


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

* name
* email
* title
* category (one of the ones specified inside: `app/models/member.rb` in the constant `CATEGORIES`
* description
* is_board_member (A user might be in the `Staff` category and also be a `Board Member`). Board members that are just Board members should have this flag set to true and have category `Board of Directors`

*TODO*: Still to add: picture attachment.

### Posts

Used to represent stubs of news articles, blog posts and other relevant links,
content will be stubbed in this project and linked to the source material.
The attributes are:

* url (of the original content)
* title
* short_description
* video_url (if there's a video to be displayed).


*TODO*: Still to add: picture attachment;


### Use Cases

Represent examples of use cases and community testimonials. Include the following
attributes:

* author
* quote
* description
* signature
* video_url (if there's a video to be displayed).

*TODO*: still to add: picture_attachment.


## The API

This project includes a simple API that exposes all types of content and which
will be primarily consumed by Radiant.Earth's marketing website. The existing
endpoints are:


`GET /api/v1/posts`

Returns all the posts sorted by `created_at` date. *TODO*: Add pagination.


`GET /api/v1/members`

Returns all members sorted by `name`. *TODO*: might be relevant to add a different
type of grouping or filtering.


`GET /api/v1/use_cases`

Returns all use_cases sorted by `created_at` date. *TODO* Might be relevant to
add pagination and some kind of filtering.

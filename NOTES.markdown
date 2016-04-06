SightSeeDC Application

Purpose: To create a sightseeing application for Washington DC, allowing users to create a list of sights to visit, comment on the sights, and view other user lists of sights. 

**** ORM ****
Models
  class User: has many reviews, has many sights through reviews
  class Review: belongs to user, belongs to sight
  class Sight: has many reviews, has many users through reviews

Database
  table users: username string, email string, password_digest string
  table reviews: user_id integer, sight_id integer
  table sights: name string, description string

*** Controllers ***
ApplicationController
  - get '/' - render latest reviews and list additions  

UsersController
  - get '/signup' - load signup form
  - post '/signup' - process signup form
  - get '/login' - load login form
  - post '/login' - process login form
  - get '/logout' - clear session
  ** User Sights Routes **
    - get '/users/:slug' - render user show page of list and comments
    - get '/users/list/new' - load new list form
    - post '/users/list' - process new list form
    - get '/users/list/:slug/edit' - load list edit form
    - patch '/users/list/:slug' - process list edit form

ReviewsController
  - get '/reviews' - show all reviews
  - get '/reviews/new - load new review form
  - post '/reviews' - process new review form
  - get '/reviews/:id' - show single review
  - get '/reviews/:id/edit' - load edit form
  - patch '/reviews/:id' - process edit form
  - delete '/reviews/:id/delete' - process delete form

SightsController
  - get '/sights' - show all sights
  - get '/sights/new' - load new sight form
  - post '/sights' - process new sight form
  - get '/sights/:id' - show single sight
  ** Questionable Routes **
    - get '/sights/:id/edit' - load edit form
    - patch '/sights/:id' - process edit form
    - delete '/sights/:id/delete' - process delete form

*** Views ***
- users folder
- sights folder
- reviews folder
- layout.erb

*** Public Folder ***
- add bootstrap css



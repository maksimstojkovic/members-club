# Members Club

A Rails application which restricts access to the author of a post using authorisation.

Main techniques / principles applied:
* Authentication
* Authorisation
* Resource scaffolding

Models:
* User username:string, email:string, password:string
* Post user:references, body:text

Useful commands:
```ruby
# Generate devise user model
# Update migration with: t.string :username, null: false, default: ""
rails g devise User

# Generate controller to add username to signup form (update routes after running)
# Update devise route to resemble: devise_for :users, controllers: { registrations: 'users/registrations' }
rails g devise:controllers users -c registrations

# Generate view to add username to signup form
rails g devise:views users -v registrations
```

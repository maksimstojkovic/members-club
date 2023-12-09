# Members Club

A Rails application which restricts access to the author of a post using authorisation.

Main techniques / principles applied:

* Authentication
* Authorisation
* Resource scaffolding

Models:

* User username:string, email:string, password:string
* Post user:references, body:text

General Notes:
* Comment `gem "jbuilder"` in `Gemfile` to prevent scaffold from including JSON API views

Useful commands:

```ruby
# Add devise installation
# Read manual steps and update project as required
rails g devise:install

# Generate devise user model
# Update migration with following to add username: t.string :username, null: false, default: ""
rails g devise User

# Generate controller to add username to signup form (update routes after running)
# Update devise route to resemble: devise_for :users, controllers: { registrations: 'users/registrations' }
rails g devise:controllers users -c registrations

# Generate view to add username to signup form
rails g devise:views users -v registrations
```

Useful Links:

* [https://github.com/heartcombo/devise](https://github.com/heartcombo/devise)
* [https://github.com/heartcombo/devise#hotwireturbo](https://github.com/heartcombo/devise#hotwireturbo)
* [https://dev.to/casseylottman/adding-a-field-to-your-sign-up-form-with-devise-10i1](https://dev.to/casseylottman/adding-a-field-to-your-sign-up-form-with-devise-10i1)

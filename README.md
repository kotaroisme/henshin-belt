# Hensin Belt on Grape API

Hensin Belt is a Grape middleware to connect your API resources with your API authenticator.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'henshin-belt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install henshin-belt

## Usage

### Install generator

On your first install, run this generator :

```ruby
rails g henshin_belt:install
```

### Usage with Grape

You will need to use the middleware in your main API :

```ruby
# use middleware
use ::HensinBelt::Oauth2
```

You could also use the helpers :

```ruby
# use helpers
helpers ::HensinBelt::Helpers
```

### Protecting your endpoint

In your endpoint you need to define which protected endpoint by adding this DSL :

1.  `oauth2`
2.  `oauth2(:email)`

Example :

```ruby
desc "Your protected endpoint"
oauth2 
get :protected do
    # your code goes here
end
```

```ruby
desc "Your protected endpoint with defined scope"
oauth2(:email)
get :protected do
    # your code goes here
end
```

## Nice feature

From your protected endpoint you could get :

1. `resource_token` => Your access token
2. `resource_credential` => Full credentials
3. `resource_owner` => Current Object
4. `me` => Current Object

# Randyname

Generate friendly and happy memorable random names to use in your apps or anywhere else.

## Installation

Add this line to your application's Gemfile:

    gem 'randyname'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install randyname

## Usage

Randyname is pretty simple. There is nothing to configure and it only has a single method, `.randymize`:

```ruby
Randyname.randymize # => "rough-snowflake-1142"

# Token range
Randyname.randymize(100) # => "nameless-star-13"

# Don't include the token
Randyname.randymize(0) # => "long-flower"

# Use a different delimiter
Randyname.randymize(9999, '.') # => "cool.leaf.6743"

# No token, no delimiter
Randyname.randymize(0, ' ') # => "green fire"
```

## Customize words  

Create `config/initializers/randyname.rb`

Add your custom list as follow

```
Randyname.adjectives = %w{good better}
Randyname.nouns = %w{boy girl}
```

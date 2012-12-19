# Envious

Easy Ruby on Rails application and environment configuration.

## What is Envious?
Envious is used to configure environment variables for Ruby on Rails 3 applications. It allows you to add configuration variables without the need to add configuration files to your repository.

Envious works by supplying your with an `environment_vars.yml` configuration file. When your Rails app is loaded, configurations options from this file are also loaded and added to the local Environment variable hash. The configuration options can then be accessed using the `ENV[KEY]` syntax.

## Installation

Add this line to your application's Gemfile:

    gem 'envious'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install envious

After installation, run the following to create the configuration file, and add it to your .gitignore.

    $ rails generate envious:setup

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

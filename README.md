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

After installation, run the following to create `config/environment_vars.yml`, and add it to your `.gitignore`.

    $ rails generate envious:setup

## Usage

Setting up configuration with Envious is easy. To begin, simply add some variables to your `config/environment_vars.yml` that you would like available in the `ENV` hash. Keep in mind that Envious uses `Rails.env` to allow configuration based on your current environment.
```yaml
development: 
  USERNAME: "cat"

production:
  USERNAME: "dog"

API_KEY: "ABCXYZ"
```
In the above case, `ENV["API_KEY"]` will produce `"ABCXYZ"` because any values not under an environment will be available in all environments. In development `ENV["USERNAME"]`  will be `"cat", and it will be `"dog"` in production.

Since Envious configuration is loaded when your Rails app loads, the `ENV` hash is available anywhere in your application where you may need to call upon your configuration.


## Questions or Problems?

If you have any questions or issues with Envious, please add an [issue on GitHub](https://github.com/RyanNielson/envious/issues), or send a pull request.

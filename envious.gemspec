# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'envious/version'

Gem::Specification.new do |gem|
  gem.name          = "envious"
  gem.version       = Envious::VERSION
  gem.authors       = ["Ryan Nielson"]
  gem.email         = ["ryan.nielson@gmail.com"]
  gem.description   = %q{A gem that makes it easy to load environment variables from a local YAML file.}
  gem.summary       = %q{A gem that makes it easy to load environment variables from a local YAML file. This allows you to keep any private configuration information in environment variables and out of the repository.}
  gem.homepage      = "http://github.com/ryannielson"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

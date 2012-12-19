Gem::Specification.new do |gem|
  gem.name          = "envious"
  gem.version       = "0.1.0"
  gem.authors       = ["Ryan Nielson"]
  gem.email         = ["ryan.nielson@gmail.com"]
  gem.description   = %q{Easy Ruby on Rails application and environment configuration.}
  gem.summary       = %q{Easy Ruby on Rails application and environment configuration using YAML and ENV.}
  gem.homepage      = "http://github.com/ryannielson/envious"

  gem.add_dependency "rails", "~> 3.0"

  gem.add_development_dependency "rspec", "~> 2.0"
  
  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

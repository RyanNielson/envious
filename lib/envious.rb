require "envious/railtie"

module Envious
  extend self

  def load_env(specific_environment = nil)
    environment = (specific_environment || self.environment).to_s
    add_to_environment(default_vars.merge(environment_vars))
  end

  def file 
    @file ||= Rails.root.join('config/environment_vars.yml')
  end

  def yaml
    @yaml ||= File.exist?(file) ? YAML.load(File.read(file)) : {}
  end

  def environment
    Rails.env
  end

  def default_vars()
    yaml.reject { |_, v| Hash === v }
  end

  def environment_vars
    yaml.fetch(environment, {})
  end

  def add_to_environment(hash)
    hash.each { |key, value| ENV[key.to_s] = value.to_s }
  end
end

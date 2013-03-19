require "envious/railtie"
require "pp"
module Envious
  extend self

  def vars_for_heroku
    env_vars = default_vars.merge(environment_vars)
    env_vars = env_vars.map { |k, v| "#{k}=#{v}"}.join(' ')
  end

  def vars_for_cloud66
    env_vars = default_vars.merge(environment_vars)
    env_vars = env_vars.map { |k, v| "#{k}=#{v}"}.join("\n")
  end

  def load_env()
    add_to_environment(default_vars.merge(environment_vars))
  end

  def file 
    @file ||= Rails.root.join('config/environment_vars.yml')
  end

  def yaml
    @yaml ||= File.exist?(file) ? YAML.load(File.read(file)) : {}
  end

  def environment
    Rails.env.to_s
  end

  def default_vars()
    yaml.reject { |_, v| Hash === v }
  end

  def environment_vars
    yaml.fetch(environment, {})
  end

  def add_to_environment(hash)
    hash.each { |key, value| ENV[key.to_s] = value.to_s unless ENV.key?(key.to_s) }
  end
end

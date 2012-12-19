module Envious
  class Railtie < Rails::Railtie
    config.before_configuration do
      Envious.load_env
    end
  end 
end
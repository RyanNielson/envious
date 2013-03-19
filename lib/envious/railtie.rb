module Envious
  class Railtie < Rails::Railtie
    config.before_configuration do
      Envious.load_env
    end

    rake_tasks do 
      load 'tasks/heroku.rake'
      load 'tasks/cloud66.rake'
    end
  end 
end
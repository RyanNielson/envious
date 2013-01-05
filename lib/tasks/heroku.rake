namespace :envious do
  namespace :heroku do
    desc "Push environment variables to heroku."
    task :push , [:app] => :environment do |_, args|
      rails_env = `heroku config:get RAILS_ENV`.strip
      Rails.env = rails_env.blank? ? 'production' : rails_env
      Kernel.system("heroku config:add #{Envious.vars_for_heroku}")
    end
  end
end
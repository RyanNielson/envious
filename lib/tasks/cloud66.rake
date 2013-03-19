namespace :envious do
  namespace :cloud66 do
    desc "Export environment variables for Cloud66."
    task :export, :env do |t, args|
      args.with_defaults(:env => "production")
      Rails.env = args.env
      puts Envious.vars_for_cloud66
    end
  end
end
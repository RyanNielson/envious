module Envious
  module Generators
    class SetupGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def copy_environment_vars_file
        copy_file 'environment_vars.yml', 'config/environment_vars.yml'
      end

      def configure_gitignore
        append_file('.gitignore', '/config/environment_vars.yml') if File.exists?('.gitignore')
      end
    end
  end
end
require 'rails/generators/base'

module Authority
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates an Authority initializer for your application." 

      def copy_initializer
        template "authority.rb", "config/initializers/authority.rb"
      end

      def copy_forbidden
        template "403.html", "public/403.html"
      end
      
    end
  end
end
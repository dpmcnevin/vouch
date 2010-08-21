module Vouch
  class ClientGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    # all public methods in here will be run in order
    def add_oauth_file
      copy_file "oauth.yml", "config/oauth.yml"
    end

    def inject_application_controller
      inject_into_file "app/controllers/application_controller.rb", "  include Vouch::Client\n", :after => "class ApplicationController < ActionController::Base\n"
    end
    
  end
end


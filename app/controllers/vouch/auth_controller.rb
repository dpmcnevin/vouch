module Vouch
  class AuthController < ApplicationController

    unloadable

    skip_before_filter :require_user
    skip_before_filter :set_user
    skip_before_filter :cache_tags
    
    before_filter :read_config
        
    def show
      redirect_to client.web_server.authorize_url(
        :redirect_uri => redirect_uri
      )
    end

    def callback
      access_token = client.web_server.get_access_token(params[:code], :redirect_uri => redirect_uri)
      user = JSON.parse(access_token.get(@oauth_config["user_path"]))

      if user
        if user.is_a?(Hash) && has_roles?(user)
          @user = User.find_or_create_by_email(user)
          session[:user_id] = @user.id
          session[:expires_at] = access_token.expires_at
          redirect_to session[:return_to] || root_path
        else
          render :text => "Unauthorized", :status => 401
        end
      else
        render :text => "Can't authenticate", :status => 401
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to @oauth_config["logout_url"]
    end

    private
   
    def read_config
      @oauth_config = YAML.load_file("#{Rails.root}/config/oauth.yml")[Rails.env]
      
      @oauth_config["authorize_path"] ||= '/oauth/authorize'
      @oauth_config["access_token_path"] ||= '/oauth/access_token'
      @oauth_config["user_path"] ||= '/oauth/user'
      @oauth_config["callback_path"] ||= '/auth/callback'
    end
    
    def has_roles?(user)
      return true unless @oauth_config["required_roles"].present?
      user["roles"].is_a?(Array) && (user["roles"].to_a & @oauth_config["required_roles"].to_a).present?
    end

    def client
      OAuth2::Client.new(@oauth_config["client_id"], @oauth_config["client_secret"], 
        :site              => @oauth_config["site"],
        :authorize_path    => @oauth_config["authorize_path"],
        :access_token_path => @oauth_config["access_token_path"]
      )
    end

    def redirect_uri
      uri = URI.parse(request.url)
      uri.path = @oauth_config["callback_path"]
      uri.query = nil
      uri.to_s
    end
    
  end
end
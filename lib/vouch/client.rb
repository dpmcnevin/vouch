module Vouch
  module Client
    
    def login_url
      auth_path
    end

    def current_user
      if session[:user_id]
        if session[:expires_at] < lambda{Time.now}.call
          session[:user_id] = nil
        else  
          User.find(session[:user_id])
        end
      end
    end

    def require_user
      unless current_user
        store_location
        if request.xhr?
          render :update do |page|
            page.redirect_to(auth_path)
          end
        else
          flash[:notice] = "You must be logged in to access this page"
          redirect_to auth_path
        end
        return false
      end
    end

    def store_location
      session[:return_to] = request.url
    end
    
  end
end
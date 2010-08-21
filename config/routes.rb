Rails.application.routes.draw do
  resource :auth, :controller => "vouch/auth", :only => [:show, :destroy] do
    member do
      get :callback
    end
  end
end
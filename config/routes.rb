ProjectManagementExample::Application.routes.draw do
  devise_for :users

  constraints(Subdomain) do
    match '/' => "dashboard#index", :as => :user_account_root
  end

  root :to => "home#index"

end

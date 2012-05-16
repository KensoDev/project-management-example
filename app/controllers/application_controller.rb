class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if resource.is_a? User
      return root_url(subdomain: resource.subdomain)
    else
      super
    end
  end

  
end

class DashboardController < ApplicationController
  before_filter :verify_logged_in_user
  before_filter :verify_subdomain_ownership

  def index
    @projects = current_user.projects
  end
end

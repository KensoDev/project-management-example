require 'spec_helper'

describe DashboardController do
  render_views
  include Devise::TestHelpers

  context "User is signed out" do
    before(:each) do
      @request.host = "kensodev.manage.local"
      @request.env["HTTP_REFERER"] = @request.host
    end

    it "should be redirected" do
      get :index
      response.should be_redirect
    end
    
  end

  context "User is signed in" do
    before(:each) do
      @user = Factory(:user, subdomain: "kensodev")
      sign_in @user

      @request.host = "kensodev.manage.local"
      @request.env["HTTP_REFERER"] = @request.host
    end

    describe "When the user is the subdomain owner" do
      it "should be succesful" do
        get :index
        response.should be_success  
      end
    end

    describe "When the user is not the subdomain owner" do
      before(:each) do
        @not_owner = Factory(:user, subdomain: "paz")
        
        sign_in @not_owner

        @request.host = "kensodev.manage.local"
        @request.env["HTTP_REFERER"] = @request.host
      end

      it "should redirect me to the login page" do
        get :index
        response.should be_redirect  
      end
    end
  end
end

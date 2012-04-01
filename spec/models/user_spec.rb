require 'spec_helper'

describe User do
  context "Validations" do
    it "should validate the uniqueness of subdomain" do
      @user = User.new(first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name,
        password: "foobar",
        password_confirmation: "foobar",
        email: Faker::Internet.email,
        subdomain: "kensodev")
      @user.save.should be_true

      @other_user = User.new(first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name,
        password: "foobar",
        password_confirmation: "foobar",
        email: Faker::Internet.email,
        subdomain: "kensodev")

      @other_user.save.should be_false
    end
  end  
end
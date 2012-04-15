require 'spec_helper'

describe Todo do
  before(:each) do
    @user = Factory(:user)
    @project = @user.projects.create(name: Faker::Name.first_name)
  end

  describe "Validations" do
    it "should not save a TODO without a title" do
      todo = @project.todos.new()
      todo.save.should be_false
    end

    it "should save TODO with all valid params" do
      todo = @project.todos.new(title: "Sample title")
      todo.save.should be_true
    end
  end
end

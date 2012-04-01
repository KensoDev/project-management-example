require 'spec_helper'

describe Project do
  it "should have a name" do
    project = Project.new
    project.should respond_to(:name)
  end

  it "should have a status" do
    project = Project.new
    project.should respond_to(:status)
  end
end

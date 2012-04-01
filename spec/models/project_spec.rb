require 'spec_helper'

describe Project do
  describe "Params" do
    it "should have a name" do
      project = Project.new
      project.should respond_to(:name)
    end

    it "should have a status" do
      project = Project.new
      project.should respond_to(:status)
    end
  end

  describe "Validations" do
    before(:each) do
      @valid_params = { name: "Project 01", status: :active }
    end

    it "should not save project without a name" do
      project = Project.new(@valid_params.merge({name: ''})) 
      project.save.should be_false
    end

    it "should not save project without a status" do
      project = Project.new(@valid_params.merge({status: ''})) 
      project.save.should be_false
    end
  end

  describe "Status" do
    before(:each) do
      @valid_params = { name: "Project 01", status: :active }
    end

    it "should save the status correctly to the database" do
      project = Project.new(@valid_params)
      project.save
      project.status.should eq(:active)
    end
  end
end
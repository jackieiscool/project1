require 'spec_helper'

before(:each) do
  @params = valid_attributes
end

it "should create new user" do
  assigns(:user).should be_new_record
  User.count.should == (users + 1)
end

it "should render the home page on successful signup" do
  post :create, :user => @params

  response.should be_successful
end
end

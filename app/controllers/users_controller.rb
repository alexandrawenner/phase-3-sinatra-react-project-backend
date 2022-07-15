class UsersController < ApplicationController

 # Creates a new user
  post "/users" do
    user = User.create(name: params[:name])
    user.to_json
  end

  # Returns all reviews for specific user 
  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end
end

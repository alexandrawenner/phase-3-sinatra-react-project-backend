class UsersController < ApplicationController

 # Creates a new user
  post "/users" do
    user = User.create(name: params[:name])
    user.to_json
  end

  # Returns all reviews for specific user 
  get "/users/:id" do
    user_reviews = User.find(params[:id]).reviews
    user_reviews.to_json
  end
end

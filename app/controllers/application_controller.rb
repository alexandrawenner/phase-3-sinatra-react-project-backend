class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # returns all films
  get "/films" do
    films = Film.all
    films.to_json
  end

  # returns a specific film
  get "/films/:id" do
    film = Film.find(params[:id])
    film.to_json
  end
  
  # Creates a new film
  post "/films" do
    film = Film.create(title: params[:title], year: params[:year], runtime: params[:runtime], rotten_tomatoes_score: params[:rotten_tomatoes_score], director: params[:director], starring: params[:starring], synopsis: params[:synopsis], critics_consensus: params[:critics_consensus], image_url: params[:image_url], trailer: params[:trailer])
    film.to_json
  end
  
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

  # Updates a review
  patch "/reviews/:id" do
    user_review = Review.find(params[:id])
    user_review.update(review_body: params[:review_body])
    user_review.to_json
  end

  # Deletes a review
  delete "/review/:id" do
    user_review = Review.find(params[:id])
    user_review.destroy
    user_reviews.to_json
  end

  # Returns all reviews for a specific film
  get "/films/:id/reviews" do
    film_reviews = Film.find(params[:id]).reviews
    film_reviews.to_json
  end

  # Posts a review for a specific film  
  post "/films/:id/reviews" do
    review = Review.create(review_body: params[:review_body], film_id: params[:id], user_id: params[:user_id])
    review.to_json
  end

end

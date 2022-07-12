class ReviewsController < ApplicationController
    
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
    user = User.find_by(name: params[:name])
    review = Review.create(review_body: params[:review_body], film_id: params[:id], user_id: user.id)
    review.to_json
  end

end
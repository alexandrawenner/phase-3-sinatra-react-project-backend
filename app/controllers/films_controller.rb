class FilmsController < ApplicationController

 # Returns all films
 get "/films" do
    films = Film.all
    films.to_json
  end

  # Returns a specific film
  get "/films/:id" do
    film = Film.find(params[:id])
    film.to_json
  end
  
  # Creates a new film
  post "/films" do
    film = Film.create(title: params[:title], year: params[:year], runtime: params[:runtime], rotten_tomatoes_score: params[:rotten_tomatoes_score], director: params[:director], starring: params[:starring], synopsis: params[:synopsis], critics_consensus: params[:critics_consensus], image_url: params[:image_url], trailer: params[:trailer])
    film.to_json
  end
  
end
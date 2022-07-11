class MoviesController < ApplicationController
    #create a route that returns a response of all movies
    #index 
    get '/movies' do
        movies = Movie.all
        movies.to_json 
    end

    #Follow REST conventions to create and define out endpoints

    #create a dynamic route that responds with a single movie given the ID parameter
end
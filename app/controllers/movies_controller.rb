class MoviesController < ApplicationController
    
    # Go to list of Movies
    def index
        @movies = Movie.all
    end
    
    # Go to a specific Movie
    def show
        @movie = Movie.find(params[:id])
    end
end

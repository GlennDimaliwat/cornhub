class MoviesController < ApplicationController
    before_action :set_movie, only: [:show, :edit, :update, :destroy]
    
    # Go to list of Movies
    def index
        @movies = Movie.all
    end
    
    # Go to a specific Movie
    def show
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new( movie_params )
        @movie.save

        redirect_to movies_url
    end

    def edit
    end

    def update
        @movie.update( movie_params )
        redirect_to movie_path
    end

    def destroy
        @movie.destroy
        redirect_to movies_url
    end

    private
    def set_movie
        @movie = Movie.find(params[:id])
    end

    def movie_params
        params.require(:movie).permit(:title, :description, :year_released, :genre)
    end
end

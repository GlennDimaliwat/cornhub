class MoviesController < ApplicationController
    before_action :set_movie, only: [:show, :edit, :update, :destroy]
    
    # Go to list of Movies
    def index
        @movies = Movie.all
    end
    
    # Go to a specific Movie
    def show
    end

    # Go to New movie page
    def new
        @movie = Movie.new
    end

    # Create Movie based on details entered in New Page
    def create
        @movie = Movie.new( movie_params )
        @movie.save

        redirect_to movies_url
    end

    # Go to Edit movie page
    def edit
    end

    # Update Movie based on details entered in Edit Page
    def update
        @movie.update( movie_params )
        redirect_to movie_path
    end

    # Delete the movie
    def destroy
        @movie.destroy
        redirect_to movies_url
    end

    private
    # Set the Movie ID
    def set_movie
        @movie = Movie.find(params[:id])
    end

    # Retrieve the movie model and allow submission of the attributes Title, Description, Year Released and Genre 
    def movie_params
        params.require(:movie).permit(:title, :description, :year_released, :genre)
    end
end

Rails.application.routes.draw do
  
  # Landing page
  root 'movies#index'
  
  # Index
  get '/movies' => 'movies#index'
  
  # Show
  get '/movies/:id' => 'movies#show', as: 'movie_show'

end

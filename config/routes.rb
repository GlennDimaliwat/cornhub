Rails.application.routes.draw do
  
  # Landing page
  root 'movies#index'

  # Index
  get '/movies' => 'movies#index'
  
  # New
  get '/movies/new' => 'movies#new'
  
  # Show
  get '/movies/:id' => 'movies#show', as: 'movie'

  # Create
  post '/movies' => 'movies#create'

  # Edit
  get '/movies/:id/edit' => 'movies#edit', as: 'movie_edit'

  # Update
  patch '/movies/:id' => 'movies#update'
  put '/movies/:id' => 'movies#update'

  # Delete
  delete '/movies/:id' => 'movies#destroy', as: 'movie_delete'

end

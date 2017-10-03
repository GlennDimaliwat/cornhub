Rails.application.routes.draw do
  
  # Landing page
  root 'movies#index'

  # Index
  get '/movies' => 'movies#index'
  
  # Show
  get '/movies/:id' => 'movies#show', as: 'movie'

  # New
  get '/movie/new' => 'movies#new'

  # Create
  post '/movies' => 'movies#create'

  # Edit
  get '/movie/:id/edit' => 'movies#edit', as: 'movie_edit'

  # Update
  patch '/movies/:id' => 'movies#update'
  put '/movies/:id' => 'movies#update'

  # Delete
  delete '/movies/:id' => 'movies#destroy', as: 'movie_delete'

end

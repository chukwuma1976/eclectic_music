Rails.application.routes.draw do
  
  resources :members
  resources :artist_members, only: [:create]
  resources :albums
  resources :songs
  resources :artists

  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
  delete '/logout', to: 'sessions#destroy'

  get '/interesting/:key_value', to: 'artists#interesting'

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

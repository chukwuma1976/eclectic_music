Rails.application.routes.draw do
  
  resources :members
  resources :artist_members, only: [:create]
  resources :albums
  resources :songs
  resources :artists
  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

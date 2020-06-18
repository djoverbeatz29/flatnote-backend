Rails.application.routes.draw do
  resources :notes, only: [:get, :post]
  get '/login', to: 'auth#show'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  resources :users, only: [:create, :show]

  end
Rails.application.routes.draw do
  resources :notes
    post '/auth', to: 'auth#create'
    get '/current_user', to: 'auth#show'
  end
end
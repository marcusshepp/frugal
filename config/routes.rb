Rails.application.routes.draw do
  # items
  get '/foo', to: 'item#index'

  # users
  resources :users

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end

Rails.application.routes.draw do
  # items
  get '/foo', to: 'item#index'
  get '/items/new', to: 'item#new'
  resources :items

  # users
  resources :users

  # categories
  resources :categories

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end

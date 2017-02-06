Rails.application.routes.draw do
  # items
  resources :items

  # users
  resources :users

  # categories
  resources :categories

  #budget

  resources :budgets

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end

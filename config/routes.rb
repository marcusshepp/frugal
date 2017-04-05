Rails.application.routes.draw do
  # items
  resources :items

  # users
  resources :users

  # categories
  resources :categories

  #budget
  resources :budgets

  #purchases
  resources :purchases

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  post '/purchase_item', to: 'purchases#purchase_item'

end

Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  get '/foo/', to: 'item#index'
  resources :users

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end

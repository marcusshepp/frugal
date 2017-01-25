Rails.application.routes.draw do
  get 'users/new'
  get '/foo/', to: 'item#index'
end

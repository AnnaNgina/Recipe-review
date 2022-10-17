Rails.application.routes.draw do

  resources :reviews, only: [:create, :destroy,:index, :show]
  resources :recipes, only: [:show, :index, :update, :create,:destroy]
  resources :users, only: [:show, :index]

  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end

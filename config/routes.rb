Rails.application.routes.draw do
  resources :reviews
  resources :users
  # resources :reviews
  # resources :recipes
  # Define your application routes per the DSL in https://guid,es.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"''
  # resources :reviews, only: [:index, :show, :create, :destroy]
  #  resources :recipes, only: [:show, :index]
  resources :reviews, only: [:create, :destroy,:index, :show]
  resources :recipes, only: [:show, :index, :update, :create,:destroy]
  resources :users, only: [:show, :index]
end

Rails.application.routes.draw do
  get "sessions/create"
  get "sessions/new"
  get "sessions/edit"
  get "sessions/update"
  get "sessions/destroy"
  resources :users
  resources :sessions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #hello world
end

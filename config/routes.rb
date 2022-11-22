Rails.application.routes.draw do
<<<<<<< HEAD
  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"

  resources :reviews
  resources :reservations
  resources :users
  resources :sessions
  resources :rooms

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #hello world
=======
  resources :users
  resources :sessions
  resources :rooms
  resources :reservations
  resources :reviews
  resources :sessions
>>>>>>> 24d05a45b64b646cc7793372ce3b99e42a7562b7
end



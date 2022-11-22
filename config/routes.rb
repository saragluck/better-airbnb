Rails.application.routes.draw do
<<<<<<< HEAD
  resources :users
  resources :sessions
=======

  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"


  resources :users
>>>>>>> 8c1f9a0c834648085b717fe7a42eea1bed4fc56f
  resources :rooms
  resources :reservations
  resources :reviews
  resources :sessions
<<<<<<< HEAD
=======


>>>>>>> 8c1f9a0c834648085b717fe7a42eea1bed4fc56f
end

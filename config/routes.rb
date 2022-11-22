Rails.application.routes.draw do
  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"

  resources :users
  resources :sessions
  resources :rooms
  resources :reservations
  resources :reviews
end

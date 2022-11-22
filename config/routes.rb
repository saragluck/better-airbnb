Rails.application.routes.draw do
  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"

  resources :reviews
  resources :reservations
  resources :users
  resources :sessions
  resources :rooms
end

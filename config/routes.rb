Rails.application.routes.draw do
  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  resources :users
  resources :rooms
  resources :reservations
  resources :reviews
  resources :sessions
end

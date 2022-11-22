Rails.application.routes.draw do
  get "reservation/index"
  get "reservation/create"
  get "reservation/new"
  get "reservation/edit"
  get "reservation/update"
  get "reservation/destroy"
  get "sessions/create"
  get "sessions/new"
  get "sessions/edit"
  get "sessions/update"
  get "sessions/destroy"
  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"

  resources :users
  resources :sessions
  resources :rooms
  resources :reservations
  resources :reviews
  resources :sessions
end

Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :rooms
  resources :reservations
  resources :reviews
  resources :sessions
end



Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/new'
  get 'reviews/update'
  get 'reviews/delete'
  get "sessions/create"
  get "sessions/new"
  get "sessions/edit"
  get "sessions/update"
  get "sessions/destroy"

  resources :users
  resources :sessions
  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #hello world
end

# get 'rooms/create'
# get 'rooms/new'
# get 'rooms/edit'
# get 'rooms/update'
# get 'rooms/destroy'
# get "sessions/create"
# get "sessions/new"
# get "sessions/edit"
# get "sessions/update"
# get "sessions/destroy"

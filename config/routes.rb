Ribbitapp::Application.routes.draw do
  root to: "users#new"

  resources :users
  resources :sessions, only: [:create, :destroy]
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :ribbits
  resources :relationships
  resources :buddies, only: [:index]
end

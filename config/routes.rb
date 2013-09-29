Ribbit::Application.routes.draw do
  root to: "users#new"

  resources :users
  resources :sessions, only: [:create, :destroy]
end

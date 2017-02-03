Rails.application.routes.draw do
  devise_for :users
  resources :ideas do
  resources :comments,only: [:create]
end
  resources :users, only: [:show]
  root 'ideas#index'
end

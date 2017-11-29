Rails.application.routes.draw do

devise_for :users
resources :users, only: [:show, :update]
root to: 'pages#home'

resources :meals
end

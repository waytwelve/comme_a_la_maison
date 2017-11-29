Rails.application.routes.draw do
  root to: 'meals#index'
  devise_for :users

  resources :meals
end

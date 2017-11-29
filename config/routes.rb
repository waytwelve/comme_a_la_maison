Rails.application.routes.draw do
  root to: 'meals#home'
  devise_for :users

  resources :meals
end

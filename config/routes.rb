Rails.application.routes.draw do

devise_for :users
resources :meals
root to: 'meals#index'

end

Rails.application.routes.draw do
  resources :user
  devise_for :users
  root to: 'pages#home'

end

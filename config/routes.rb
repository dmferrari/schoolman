Rails.application.routes.draw do
  root to: 'home#index'

  resources :dummies
  devise_for :users
end

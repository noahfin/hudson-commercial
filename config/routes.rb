Rails.application.routes.draw do
  devise_for :views
  root to: 'visitors#index'
  devise_for :users
  resources :users
end

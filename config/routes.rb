Rails.application.routes.draw do
  resources :touches
  resources :deals
  resources :campaigns
  resources :leads
  resources :projects
  resources :companies
  resources :todos
  resources :addresses
  resources :contacts
  devise_for :views
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get "/:page" => "pages#show"
  get '/home' => "pages#home", as: :user_root
end

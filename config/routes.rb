Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :homes, only: [:index, :create]
  resources :menus
  resources :news, except: [:index, :show]
  resources :contacts, only: [:create]
end

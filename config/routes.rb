Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :homes, only: [:index] do
    collection do
      get 'access'
    end
  end
  resources :menus
  resources :news, except: [:index]
  resources :contacts, only: [:index, :create ]
end

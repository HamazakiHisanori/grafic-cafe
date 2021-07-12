Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :homes, only: [:index] do
    collection do
      get 'access'
      get 'news'
    end
  end
  resources :menus
  resources :contacts, only: [:index, :new, :create ]
end

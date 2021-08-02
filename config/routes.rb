Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'

  resources :menus, except: [:show]
  resources :news, except: [:index]
  resources :contacts, only: [:create]
  resources :homes, only: [:index, :create] do
    collection do
      get 'worker'
    end
  end
end

Rails.application.routes.draw do
  root 'homes#index'
  resources :homes, only: [:index] do
    collection do
      get 'access'
      get 'contact'
    end
  end
  resources :menus, only: [:index, :show]
end

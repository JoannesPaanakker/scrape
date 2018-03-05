Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'pages#homepage'
  resources :pages, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :portals, only: [:show]
    resources :transactions, only: [:show, :new, :create]
  end
  resources :portals, only: [:show]
end

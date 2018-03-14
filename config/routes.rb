Rails.application.routes.draw do

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  # get 'prices', to: 'pages#prices', as: :prices
  get 'test', to: 'pages#test', as: :test # test page HTML

  devise_for :users, controllers: {
  registrations: "registrations",
}
  # root to: 'pages#home'
  root to: 'pages#homepage'
  resources :pages, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :portals, only: [:show, :index]
  end

  # resources :transactions, only: [:show, :new, :create, :index]

  resources :portals, only: [:show, :index]

  resources :users, only: [:show] do
    resources :packages, only: [:show]
  end

  resources :packages, only: [:show, :index]

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end

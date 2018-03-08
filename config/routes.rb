Rails.application.routes.draw do

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  devise_for :users, controllers: {
  registrations: "registrations",
}
  # root to: 'pages#home'
  root to: 'pages#homepage'
  resources :pages, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :properties do
    resources :portals, only: [:show, :index]
    resources :transactions, only: [:show, :new, :create]
  end
  resources :portals, only: [:show, :index]
  resources :users, only: [:show]
end

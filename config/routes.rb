Rails.application.routes.draw do
  get 'orders/create'

  get 'products/index'
  resources :products, only: :index do
  	resources :orders, only: :create
  end
  
  resources :orders, only: :index

  root 'products#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

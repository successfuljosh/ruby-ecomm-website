Rails.application.routes.draw do
  resources :general_products
  get 'carts/show'
  resources :reviews
  devise_for :users
  resources :products
  resources :order_items
  resource :carts, only:[:show]
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

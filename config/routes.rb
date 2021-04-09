Rails.application.routes.draw do

  devise_for :accounts

  root to: 'public#home'

  resources :categories
  resources :products
  resources :order_items

  get 'cart',         to: 'cart#show'
  get 'search',       to: 'public#search'
  get 'profile/:id', to: 'accounts#profile', as: :profile

end

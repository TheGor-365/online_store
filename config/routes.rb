Rails.application.routes.draw do

  devise_for :accounts

  root to: 'public#home'

  resources :categories
  resources :products
  resources :order_items

  get 'public',       to: 'public#index'
  get 'search',       to: 'public#search'
<<<<<<< HEAD
=======
  get 'cart',         to: 'cart#show'

>>>>>>> cb88a97adb27259d83927b37ee6fd2cbb280bb07
  get 'profile/:id',  to: 'accounts#profile', as: :profile

end

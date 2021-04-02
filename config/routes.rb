Rails.application.routes.draw do

  devise_for :accounts
  root to: 'public#home'

  get '/profile/:id' => 'accounts#profile', as: :profile

  resources :products

end

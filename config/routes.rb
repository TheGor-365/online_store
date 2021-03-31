Rails.application.routes.draw do

  get 'accounts/profile'
  devise_for :accounts
  root to: 'public#home'

end

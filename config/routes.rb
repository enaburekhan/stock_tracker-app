Rails.application.routes.draw do
  devise_for :users
  # get 'homes/index'
  root 'homes#index'
  get 'homes/about'

  post '/' => 'homes#index'
 
end

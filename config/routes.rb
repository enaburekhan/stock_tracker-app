Rails.application.routes.draw do
  # devise_for :users
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # get 'homes/index'
  root 'homes#index'
  get 'homes/about'

  post '/' => 'homes#index'
 
end

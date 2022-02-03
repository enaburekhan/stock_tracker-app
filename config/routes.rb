Rails.application.routes.draw do
  # get 'homes/index'
  root 'homes#index'
  get 'homes/about'
 
end

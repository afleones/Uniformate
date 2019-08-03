Rails.application.routes.draw do
  get 'home/index'

  resources :home

 root 'home#index'
end

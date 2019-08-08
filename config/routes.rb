Rails.application.routes.draw do

  get 'home/index'
  root to: "home#index"

  devise_for :users
  root to: "articulos#index"



  resources :articulos

end

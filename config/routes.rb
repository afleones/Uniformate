Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "articulos#index"

  resources :articulos
  resources :categorias


  resources :articulos
  root to: 'home#index'

end

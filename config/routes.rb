Rails.application.routes.draw do

  get 'home/index'
  root to: "home#index"

  devise_for :users

  resources :articulos

  resources :categorias

  resources :categorias do
    resources :articulos, module: :categorias, only: [:index]
  end

end

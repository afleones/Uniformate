Rails.application.routes.draw do
  get 'home/index'


  devise_for :users
  root to: "home#index"
  resources :articulos
  resources :categorias
  resources :tallas
  resources :especialidades

  resources :categorias do
  resources :articulos, module: :categorias, only: [:index]
  end

end

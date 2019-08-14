Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index'
  devise_for :users

  resources :articulos
  resources :categorias
  resources :tallas

  resources :categorias do
  resources :articulos, module: :categorias, only: [:index]
  end

end

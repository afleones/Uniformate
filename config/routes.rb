Rails.application.routes.draw do
  get 'home/index'


  devise_for :users
  root to: "home#index"
  resources :articulos
  resources :categorias
  resources :tallas
  resources :especialidades

  resources :users, only: [:edit,:update] do
  resources :cursos, only: [:index], module: :users
  end

  resources :categorias do
  resources :articulos, module: :categorias, only: [:index]
  end

end

Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "articulos#index"

  resources :articulos
  resources :categorias


<<<<<<< HEAD
  resources :articulos

  root to: 'home#index'
=======
>>>>>>> Leones

end

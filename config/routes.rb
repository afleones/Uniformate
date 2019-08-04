Rails.application.routes.draw do
  get 'home/index'

  resources :articulos

  root to: 'home#index'

end

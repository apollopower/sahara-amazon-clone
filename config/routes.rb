Rails.application.routes.draw do

  get 'cart/index'


  devise_for :users
  get 'search', to: 'search#index'
  post 'search', to: 'search#index'
  root 'home#index'

  resources :reviews
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

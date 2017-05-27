Rails.application.routes.draw do
<<<<<<< HEAD
=======
  get 'cart/index'

>>>>>>> 7c69df87d9f6b6b021fe733253f22b83c640224d
  devise_for :users
  get 'search', to: 'search#index'

  root 'home#index'

  resources :reviews
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

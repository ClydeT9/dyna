Rails.application.routes.draw do
  devise_for :users
  resources :homes
  resources :abouts
  resources :solutions
  resources :projets
  resources :photos
  resources :contacts, only: [:new, :create]
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  scope "(:locale)", :locale => /en|fr/ do
  devise_for :users
  resources :homes
  resources :categories
  resources :abouts do 
    member do
      delete :delete_image_attachment
     end  
  end
  resources :solutions do 
    member do
      delete :delete_image_attachment
     end  
  end
  resources :projets do 
    member do
      delete :delete_image_attachment
     end  
  end
  resources :contacts, only: [:new, :create]
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
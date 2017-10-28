Rails.application.routes.draw do
  get 'comments/create'

  ActiveAdmin.routes(self)
  devise_for :users

  resources :photos do
  	resources :comments
  end
  resources :users
  root 'photos#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

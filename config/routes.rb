Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'
  
  resources :posts, only: [:index, :show] 
  resources :concerts, only: [:index, :show]
  resources :pages, only: :show

end

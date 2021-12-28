Rails.application.routes.draw do
  # devise_for :users, :path_prefix =>'auth', :controllers => {:registrations => "users/registrations"}
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  get 'user_registry/new'
  resources :news
  resources :job_offers
  resources :candidates
  resources :entities
  resources :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

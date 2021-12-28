Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => "users/registrations", 
  }

  get 'user_registry/new'
  resources :news, :job_offers, :users
  resources :entities, :except => :new
  resources :candidates, :except => :new 
  get "entities/new" => redirect("/users")
  root 'home#index'

end

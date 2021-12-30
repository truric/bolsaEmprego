Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => "users/registrations", 
  }

  get 'user_registry/new'
  resources :news, :users

  resources :job_offers do
    member do
      post 'toggle_active_state'    
    end
  end

  resources :entities, :except => :new
  resources :candidates, :except => :new 
  get "entities/new" => redirect("/users")
  root 'home#index'

end

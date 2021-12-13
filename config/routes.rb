Rails.application.routes.draw do
  resources :news
  resources :job_offers
  resources :candidates
  resources :entities
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

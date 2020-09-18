Rails.application.routes.draw do
  resources :properties
  devise_for :users
  resources :users, only: [:index, :show] do
    match :make_admin, :via => [:get]
    match :remove_admin, :via => [:get]
    match :approve, :via => [:get]
  end
  get "users/:id" => "users#show"
  root to: 'home#guide'
  get "home/rentals"
  get "home/property_on_sale"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

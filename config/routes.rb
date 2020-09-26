Rails.application.routes.draw do
  get 'dashboard/main', as: 'dashboard'
  get 'dashboard/available_listings'
  get 'dashboard/rentals_listings'
  get 'dashboard/for_sale_listings'
  get 'properties' => "properties#index", as: 'all_properties'
  get 'properties/:id', controller: 'properties', action: :show, as: 'show_property'
  get 'dashboard/for_sale_listings'

  scope module: 'dashboard', path: 'dashboard'  do
    resources :properties
  end
  devise_for :users
  resources :users, only: [:index, :show] do
    match :make_properties, :via => [:get]
    match :remove_properties, :via => [:get]
    match :approve, :via => [:get]
  end
  resources :rentors
  get "users/:id" => "users#show"
  root to: 'home#guide'
  get "home/rentals"
  get "home/property_on_sale"
  get "home/about", as: 'get_to_know_us'
  get "home/contact", as: 'talk_to_us'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

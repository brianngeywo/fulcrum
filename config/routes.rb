Rails.application.routes.draw do
  get 'dashboard/main', as: 'dashboard'
  get 'dashboard/available_listings'
  get 'dashboard/rentals_listings'
  get 'dashboard/for_sale_listings'
  get 'properties' => "properties#index", as: 'all_properties'
  get 'properties/:id', controller: 'properties', action: :show, as: 'show_property'
  get 'furnitures' => "furnitures#index", as: 'all_furnitures'
  get 'furnitures/:id', controller: 'furnitures', action: :show, as: 'show_furniture'
  get 'furniture_categories' => "furniture_categories#index", as: 'all_furniture_categories'
  get 'furniture_categories/:id', controller: 'furniture_categories', action: :show, as: 'show_furniture_category'

  scope module: 'dashboard', path: 'dashboard'  do
    resources :properties
    resources :furniture_categories
    resources :furnitures
  end
  devise_for :users
  resources :users, only: [:index, :show] do
    match :make_properties, :via => [:get]
    match :remove_properties, :via => [:get]
    match :approve, :via => [:get]
  end
  resources :rentors
  get "users/:id" => "users#show"
  root to: 'properties#index'
  get "home/rentals"
  get "home/property_on_sale"
  get "home/about", as: 'get_to_know_us'
  get "home/contact", as: 'talk_to_us'

  get 'push/index'
  post 'payment' => 'push#payment'
  post 'callback' => 'push#callback'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

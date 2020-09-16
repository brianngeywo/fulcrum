Rails.application.routes.draw do
  resources :properties
  devise_for :users
  resources :users, only: [:index, :show]
  get "users/:id" => "users#show"
  root to: 'home#guide'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

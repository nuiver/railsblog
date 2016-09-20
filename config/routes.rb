Rails.application.routes.draw do

  root to: "blogposts#index"

  devise_for :users
  resources :portfolio_items
  resources :blogposts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

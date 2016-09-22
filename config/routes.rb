Rails.application.routes.draw do

  root to: "static#homepage"

  devise_for :users
  resources :portfolio_items
  resources :blogposts

  get "contact" => 'static#contact', as: :contact
  get "about" => 'static#homepage', as: :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

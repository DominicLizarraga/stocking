Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  root to: 'home#index'

  get "about", to: "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/", to:'home#index'
end

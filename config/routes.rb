Rails.application.routes.draw do
  resources :genres
  resources :authors
  resources :books
  resources :cards
  resources :loans, only: [:index, :show, :destroy]
  resources :check_outs, only: [:index, :create]
  root :to => 'books#index'
end

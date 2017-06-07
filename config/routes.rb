Rails.application.routes.draw do
  resources :genres
  resources :authors
  resources :books
  resources :cards
  resources :loans, only: [:index, :show, :destroy]
  resources :check_outs, only: [:index, :create]
  resources :check_ins, only: [:index, :create]
  resources :overdue_books, only: [:index] { member {get :notify} }
  root :to => 'books#index'
end

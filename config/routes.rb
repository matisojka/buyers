Rails.application.routes.draw do
  root 'products#index'

  resources :products, only: %i(index)

  get '/login' => 'sessions#new', as: :login
  resources :sessions, only: %i(create)
end

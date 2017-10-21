Rails.application.routes.draw do

  root 'pages#home'

  resources :users, only: [:new, :create]
  resources :appointments
  resources :sessions, only: [:new, :create, :destroy]

  # separate section of website
  namespace :admin do
    resources :appointments, only: [:index]
  end
end

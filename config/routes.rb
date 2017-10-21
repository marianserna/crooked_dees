Rails.application.routes.draw do

  root 'pages#home'

  resources :users, only: [:new, :create]
  resources :appointments
  resources :sessions, only: [:new, :create, :destroy]

  # separate section of website
  namespace :admin do
    resources :appointments, only: [:index] do
      # Produce admin/appointments/:id/confirm(appointment) (POST request)
      member do
        post :confirm
        post :cancel
      end
    end
  end
end

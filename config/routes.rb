Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resource :profile, only: [:show, :edit, :update]

  resources :users, only: [:show]

  resources :posts, only: [:index, :show, :new, :create] do
    resources :requests, only: [:new, :create]
  end

  namespace :dashboard do
    root to: "home#index"

    resources :posts, only: [:index, :destroy]

    resources :sent_requests, only: [:index] do
      member do
        patch :cancel
      end
    end

    resources :received_requests, only: [:index, :show] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end

end


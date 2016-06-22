Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resource :profile, only: [:show, :edit, :update]

  resources :users, only: [:show, :destroy]

  resources :shared_stories, only: [:index, :show, :new, :create]

  resources :posts, only: [:index, :show, :new, :create] do
    resources :requests, only: [:new, :create] do
      resources :chat_messages, only: [:index, :create]
    end
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


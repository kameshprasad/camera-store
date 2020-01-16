# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  # Root path
  root to: "admin/dashboard#index"
  
  # Mobile/External exposed apis
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :categories, only: [:index] do
        member do
          get :products
        end
      end

      resources :products, only: [:index]
    end
  end

  # Admin features within '/admin'
  namespace :admin do
    resources :categories
    resources :products
  end

  # Letter opener
  if Rails.env.development? || Rails.env.test?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end

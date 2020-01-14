# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  
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
end

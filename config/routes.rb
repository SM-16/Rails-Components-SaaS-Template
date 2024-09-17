Rails.application.routes.draw do
  get "static_pages/home"
  get "static_pages/pricing"
  get "static_pages/successful_payment"
  get "static_pages/canceled_payment"
  get "static_pages/privacy"
  get "static_pages/terms"
  get "home/pricing"
  get "home/successful_payment"
  get "home/canceled_payment"
  get "home/privacy"
  get "home/terms"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Devise  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # Stripe
  post "stripe/checkout", to: "stripe#checkout"
  post "stripe/webhook", to: "stripe#webhook"
  
  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "static_pages#home"
end

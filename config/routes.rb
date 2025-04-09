Rails.application.routes.draw do
  # Root path for unauthenticated users
  unauthenticated :user do
    root to: "homes#index", as: :unauthenticated_root
  end

  # Root path for authenticated users
  authenticated :user do
    root to: "dashboards#index", as: :authenticated_root
  end

  resources :site_settings
  resources :workspaces
  resources :teams
  resources :launch_settings
  resources :links
  resources :sites
  resources :homes
  resources :subscriptions
  resources :dashboards, path: "dashboard"
  resources :accounts
  resources :settings
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end

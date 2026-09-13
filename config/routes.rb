Rails.application.routes.draw do
  root "home#index"
  resources :convidados

  get "up" => "rails/health#show", as: :rails_health_check
end
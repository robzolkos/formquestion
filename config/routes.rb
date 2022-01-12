Rails.application.routes.draw do
  root "home#index"

  resources :results, only: [:index, :create]
end

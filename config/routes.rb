Rails.application.routes.draw do
  root 'home#index'
  resources :employees, only: [:index, :new, :create]
end

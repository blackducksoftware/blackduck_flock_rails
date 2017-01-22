Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :employees

    root to: "employees#index"
  end

  root 'home#index'
  resources :employees, only: [:index]
end

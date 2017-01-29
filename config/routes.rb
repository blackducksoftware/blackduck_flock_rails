Rails.application.routes.draw do
  devise_for :users, skip: :registrations 
  namespace :admin do
    resources :employees
    resources :users

    root to: "employees#index"
  end

  root 'home#index'
  resources :employees, only: [:index]
end

Rails.application.routes.draw do
  devise_for :users 
  namespace :admin do
    resources :employees
    resources :users

    root to: "employees#index"
  end

  root 'employees#index'
end

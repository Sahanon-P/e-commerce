Rails.application.routes.draw do
  devise_for :admins
  root "fish#index"
  resources :fish 
  resources :categories do
    resources :fish_categories
  end

  namespace :fish do
    post 'csv_upload'
  end
end

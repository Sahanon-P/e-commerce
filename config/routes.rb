Rails.application.routes.draw do
  devise_for :admins
  root "fish#index"
  resources :fish 
  #   resources :fish_category
  # end
  resources :categories do
    resources :fish_categories
  end
  # resources :fish_categories
  # # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

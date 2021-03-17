Rails.application.routes.draw do
  devise_for :admins
  root "fish#index"
  get "fish/admin",to: "fish#admin"
  resources :fish
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

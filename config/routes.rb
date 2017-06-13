Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
    resources :all, only: [:index]
    resources :crusts, only: [:index]
    resources :sauces, only: [:index]
    resources :cheeses, only: [:index]
    resources :meats, only: [:index]
    resources :vegetables, only: [:index]
end

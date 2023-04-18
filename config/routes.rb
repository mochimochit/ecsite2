Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'homes#index'
  get '/contact', to: 'homes#contact'
  get '/tos', to: 'homes#tos'
  get '/sitepolicy', to: 'homes#sitepolicy'
  get '/personal_information', to: 'homes#personal_information'
  resources :items
end

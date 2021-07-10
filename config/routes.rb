Rails.application.routes.draw do
  root to: "public#homepage"
  get 'public/homepage'
  devise_for :accounts
  get "/dashboard", to: "accounts#index"
  resources :posts, only: [:new, :create, :show]
end

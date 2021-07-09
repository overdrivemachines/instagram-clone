Rails.application.routes.draw do
  get 'public/homepage'
  devise_for :accounts
  get "/dashboard", to: "accounts#index"
  root to: "public#homepage"
end

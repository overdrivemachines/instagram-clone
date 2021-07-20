# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                                     root GET    /                                                                                                 public#homepage
#                          public_homepage GET    /public/homepage(.:format)                                                                        public#homepage
#                      new_account_session GET    /accounts/sign_in(.:format)                                                                       devise/sessions#new
#                          account_session POST   /accounts/sign_in(.:format)                                                                       devise/sessions#create
#                  destroy_account_session DELETE /accounts/sign_out(.:format)                                                                      devise/sessions#destroy
#                     new_account_password GET    /accounts/password/new(.:format)                                                                  devise/passwords#new
#                    edit_account_password GET    /accounts/password/edit(.:format)                                                                 devise/passwords#edit
#                         account_password PATCH  /accounts/password(.:format)                                                                      devise/passwords#update
#                                          PUT    /accounts/password(.:format)                                                                      devise/passwords#update
#                                          POST   /accounts/password(.:format)                                                                      devise/passwords#create
#              cancel_account_registration GET    /accounts/cancel(.:format)                                                                        devise/registrations#cancel
#                 new_account_registration GET    /accounts/sign_up(.:format)                                                                       devise/registrations#new
#                edit_account_registration GET    /accounts/edit(.:format)                                                                          devise/registrations#edit
#                     account_registration PATCH  /accounts(.:format)                                                                               devise/registrations#update
#                                          PUT    /accounts(.:format)                                                                               devise/registrations#update
#                                          DELETE /accounts(.:format)                                                                               devise/registrations#destroy
#                                          POST   /accounts(.:format)                                                                               devise/registrations#create
#                                dashboard GET    /dashboard(.:format)                                                                              accounts#index
#                                    posts POST   /posts(.:format)                                                                                  posts#create
#                                 new_post GET    /posts/new(.:format)                                                                              posts#new
#                                     post GET    /posts/:id(.:format)                                                                              posts#show
#                                  profile GET    /profile/:username(.:format)                                                                      accounts#profile

Rails.application.routes.draw do
  root to: "public#homepage"
  devise_for :accounts
  resources :posts, only: [:new, :create, :show]

  get 'public/homepage'
  get "/dashboard", to: "accounts#index"
  get "/profile/:username", to: "accounts#profile", as: :profile
  get "post/like/:post_id", to: "likes#save_like", as: :like_post
end

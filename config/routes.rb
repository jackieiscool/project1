Project1::Application.routes.draw do
  resources :places

  devise_for :users

  resources :countries
  root "users#index"

get '/home', to: 'countries#home'


# resources :places
# get "places#new"
 
end


# Prefix Verb   URI Pattern                    Controller#Action
#                   places GET    /places(.:format)              places#index
#                          POST   /places(.:format)              places#create
#                new_place GET    /places/new(.:format)          places#new
#               edit_place GET    /places/:id/edit(.:format)     places#edit
#                    place GET    /places/:id(.:format)          places#show
#                          PATCH  /places/:id(.:format)          places#update
#                          PUT    /places/:id(.:format)          places#update
#                          DELETE /places/:id(.:format)          places#destroy
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                countries GET    /countries(.:format)           countries#index
#                          POST   /countries(.:format)           countries#create
#              new_country GET    /countries/new(.:format)       countries#new
#             edit_country GET    /countries/:id/edit(.:format)  countries#edit
#                  country GET    /countries/:id(.:format)       countries#show
#                          PATCH  /countries/:id(.:format)       countries#update
#                          PUT    /countries/:id(.:format)       countries#update
#                          DELETE /countries/:id(.:format)       countries#destroy
#                     root GET    /                              users#index



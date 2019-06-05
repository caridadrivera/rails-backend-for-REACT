
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

       root 'sessions#index'
       get "/friendships/:friend_id/new", to: "friendships#create"
       get "/users/logout", to: "sessions#destroy", as: "logout"

       resources :session
       resources :friendships
       resources :likes
       resources :users
       resources :posts


       get "/", to: "sessions#new", as: "login"
       post "/",   to: 'sessions#create'

    end
  end
end

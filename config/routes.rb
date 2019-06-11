
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do


       post '/auth', to: 'auth#create'

       get "/friendships/:friend_id/new", to: "friendships#create"
       resources :users

       resources :friendships
       resources :likes

       resources :posts


    end
  end
end

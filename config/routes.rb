Tinyhummer::Application.routes.draw do
  match "login", :to => "sessions#new", :as => "login"
  match "logout", :to => "sessions#destroy", :as => "logout"
  resources :sessions
  match "oauth_callback", :to => "sessions#oauth_callback", :as => "oauth_callback"
  # by lxf
  match "home/create", :to => "home#create"
  #resources :home, :only => [:create]
  root :to => "home#timeline"
  match ":user_name", :to => "user#timeline", :constraints => { :user_name => /[a-z0-9_]+/i }
  match ":user_name/favorites", :to => "user#favorites", :constraints => { :user_name => /[a-z0-9_]+/i }
  match ":user_name/lists", :to => "lists#index", :constraints => { :user_name => /[a-z0-9_]+/i }
  match ":user_name/:list_name", :to => "lists#timeline", :user_name => /[a-z0-9_]+/i #buggy here? , :list_name => /[a-z0-9_]+/i 
  


end

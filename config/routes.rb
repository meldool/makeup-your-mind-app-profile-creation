Rails.application.routes.draw do

# Source: "Devise Authentication in Depth" - https://www.sitepoint.com/devise-authentication-in-depth/
  get '/show/:id', to: 'profiles#show'
  resources :profiles
  get '/profiles/show' => 'profiles#show'
  get '/profiles/new' => 'profiles#new'
  get '/profiles/edit' => 'profiles#edit'
  get '/profiles/index' => 'profiles#index'
  # Routes to the 'pages' controller and then to the 'index' action. -->
  root to: 'pages#index'

  devise_for :users, :controllers => { :registrations => "registrations" }

end
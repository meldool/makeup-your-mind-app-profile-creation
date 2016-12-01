Rails.application.routes.draw do
 # Setting up routes tthe Devise Registrations and Registrations/Session Controllers as this is
    # where I'm redirecting the Sign up and Login pages.
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :users, only: [:show, :index]
  resources :profiles
  resources :pages
  # Routes to the 'pages' controller and then to the 'index' action. -->
  root to: 'profiles#index'
end
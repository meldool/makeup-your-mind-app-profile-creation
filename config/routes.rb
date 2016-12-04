Rails.application.routes.draw do
  
 # This generates the Devise routes.
 # As I need to override a Devise Registrations method, I do this by specifying the
  # Registrations controller as below.
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :profiles
  # Routes to the 'pages' controller and then to the 'index' action. -->

  root to: 'profiles#index'
end
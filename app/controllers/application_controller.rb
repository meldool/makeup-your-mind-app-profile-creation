class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  
# Source: "Devise Authentication in Depth" - https://www.sitepoint.com/devise-authentication-in-depth/
  before_action :configure_permitted_parameters, if: :devise_controller?


# Description: After a user signs in, they are diverted to their Profile page (show.html.erb) 
  protected
   
    def after_sign_in_path_for(resource)
      profile_path(resource)
    end

# Source: "Devise NoMethodError 'for' ParameterSanitizer" - 
# http://stackoverflow.com/questions/38215274/devise-nomethoderror-for-parametersanitizer  

  # Here all the attributes are whitelisted.
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :current_password, :password, :password_confirmation])
    end


end

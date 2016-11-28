class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# Source: "Devise Authentication in Depth" - https://www.sitepoint.com/devise-authentication-in-depth/
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

# Source: "Devise NoMethodError 'for' ParameterSanitizer" - 
# http://stackoverflow.com/questions/38215274/devise-nomethoderror-for-parametersanitizer  

  # Here the :name attribute is whitelisted.
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :current_password, :password, :password_confirmation])
    end

 # before_filter :set_search

   # def set_search
    #  @search = Profile.search(params[:q])
  #  end

end

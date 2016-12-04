class RegistrationsController < Devise::RegistrationsController

# Source: https://github.com/plataformatec/devise/wiki/How-To:-Redirect-to-a-specific-page-on-successful-sign-up-(registration)

# Description: After a user signs up, they are diverted to a page to create their profile (new.html.erb)
  
  protected
  
    def after_sign_up_path_for(resource)
      new_profile_path(resource)
    end
end

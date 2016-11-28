module ApplicationHelper
# Source: "Devise Authentication in Depth" - https://www.sitepoint.com/devise-authentication-in-depth/
  # The header content is passed into the header() method, which is rendered 
  # through the main application.html.erb -->
 
  def header(text)
    content_for(:header) { text.to_s }
  end
end

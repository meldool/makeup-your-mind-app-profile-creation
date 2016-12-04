# Source for Carrierwave gem deployment: https://www.youtube.com/watch?v=YpF_4uciMvg

class Profile < ApplicationRecord
  # Creating association with the 'User' model so that one profile belongs to one user.
   belongs_to :user
  # Sets the field 'location as a required field by the user to enter.
  validates :location, :presence => true # Sets the field 'location as a required field by the user to enter.
  validate :check_location_entered
  mount_uploader :image, AvatarUploader
  
  def check_location_entered
    source = File.read(Rails.root.join("app/assets/javascripts/application.js"))
    context = ExecJS.compile(source)
    unless context.call("doesLocationExist", location)
      errors.add "Please select a location."
    end
  end
end
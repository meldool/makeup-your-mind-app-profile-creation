# Source for Carrierwave gem deployment: https://www.youtube.com/watch?v=YpF_4uciMvg

class Profile < ApplicationRecord
  # Creating association with the 'User' model so that one profile belongs to one user.
  belongs_to :user
  # Sets the field 'location as a required field by the user to enter.
  validates :location, :presence => true

  mount_uploader :image, AvatarUploader
end
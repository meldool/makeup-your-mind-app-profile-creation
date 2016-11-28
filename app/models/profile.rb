# Source: https://www.youtube.com/watch?v=YpF_4uciMvg

class Profile < ApplicationRecord
  # Creating association with the 'User' model so that one profile belongs to one user.
   belongs_to :user
   #after_create :create_profile
   mount_uploader :image, AvatarUploader
end
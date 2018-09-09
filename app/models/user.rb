class User < ApplicationRecord
  validates :email, presence: true
  # validates :email, :username, uniqueness: true
  mount_uploader :avatar, AvatarUploader
  has_secure_password


  has_many :user_locations
  has_many :locations, through: :user_locations
end

#Carrier Wave Documentation
#https://github.com/carrierwaveuploader/carrierwave

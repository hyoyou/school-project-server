class User < ApplicationRecord
  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true
  mount_uploader :avatar, AvatarUploader
  has_secure_password
end

#Carrier Wave Documentation
#https://github.com/carrierwaveuploader/carrierwave
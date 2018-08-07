class User < ApplicationRecord
  validates :email, presence: true
  # validates :email, :username, uniqueness: true
  mount_uploader :avatar, AvatarUploader
  has_secure_password

<<<<<<< HEAD

=======
>>>>>>> d0b5ceae410aca127dd1d870b1a1e0f7a72eb60d
  has_many :leaderboards
  has_many :locations, through: :leaderboards
end

#Carrier Wave Documentation
#https://github.com/carrierwaveuploader/carrierwave

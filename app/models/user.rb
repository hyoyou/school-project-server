class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #:confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true
  validates :email, uniqueness: true
  #mount_uploader :avatar, AvatarUploader

  has_many :user_locations
  has_many :locations, through: :user_locations

  accepts_nested_attributes_for :user_locations
end

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

  # accepts_nested_attributes_for :user_locations
  # # , :reject_if => :check_history

  # # def check_history(locations)
  # #   if locations[:location_attributes]
  # #     loc_id = locations[:location_attributes][:id]
  # #     existing_location = Location.find(loc_id)
  # #     if self.user_locations.includes(existing_location)
  # #       return true
  # #     end
  # #   end
  # # end

  def user_locations_attributes=(locations_attributes)
    # binding.pry
    locations_attributes.map do |location|
      if location[:location_attributes]
        loc_id = location[:location_attributes][:id]
        subject_location = Location.find(loc_id)
        # binding.pry
        if !self.user_locations.map(&:location_id).include? subject_location[:id]
          self.user_locations.build(:location_id => subject_location[:id])
        else
          self.errors.add(:message, "User has already checked into this location.")
        end
      end
    end
  end
end

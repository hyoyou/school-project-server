class Location < ApplicationRecord
    validates :name, uniqueness: true
 
    has_many :user_locations
    has_many :users, through: :user_locations
end

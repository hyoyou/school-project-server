class Location < ApplicationRecord
    validates :name, uniqueness: true

    belongs_to :user
    has_many :user_locations
    has_many :users, through: :user_locations
end

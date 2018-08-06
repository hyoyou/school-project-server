class Location < ApplicationRecord
    validates :name, uniqueness: true

    has_many :leaderboards
    has_many :users, through: :leaderboards
end

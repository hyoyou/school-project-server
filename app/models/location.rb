class Location < ApplicationRecord
    validates :name, uniqueness: true
<<<<<<< HEAD

    has_many :leaderboards
    has_many :users, through: :leaderboards
=======
 
    has_many :user_locations
    has_many :users, through: :user_locations
>>>>>>> Leaderboard
end

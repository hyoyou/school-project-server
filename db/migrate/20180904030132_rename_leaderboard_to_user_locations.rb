class RenameLeaderboardToUserLocations < ActiveRecord::Migration[5.1]
  def change
    rename_table :leaderboards, :user_locations
  end
end

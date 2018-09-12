class RemoveRankFromUserLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_locations, :rank, :integer
  end
end

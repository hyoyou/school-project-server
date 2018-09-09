class RemoveNoOfCheckinsFromUserLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_locations, :no_of_checkins, :integer
  end
end

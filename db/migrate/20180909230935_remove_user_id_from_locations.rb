class RemoveUserIdFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :user_id, :integer
  end
end

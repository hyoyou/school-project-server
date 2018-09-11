class AddUserIdToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :user_id, :integer
  end
end

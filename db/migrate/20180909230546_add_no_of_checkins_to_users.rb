class AddNoOfCheckinsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :no_of_checkins, :integer, default: 0
  end
end

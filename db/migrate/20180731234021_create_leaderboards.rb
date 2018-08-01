class CreateLeaderboards < ActiveRecord::Migration[5.1]
  def change
    create_table :leaderboards do |t|
      t.integer :rank
      t.integer :no_of_checkins
      t.integer :user_id
      t.integer :location_id
      t.timestamps
    end
  end
end

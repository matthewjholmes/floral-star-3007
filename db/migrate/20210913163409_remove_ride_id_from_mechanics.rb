class RemoveRideIdFromMechanics < ActiveRecord::Migration[5.2]
  def change
    remove_column :mechanics, :ride_id, :bigint
  end
end

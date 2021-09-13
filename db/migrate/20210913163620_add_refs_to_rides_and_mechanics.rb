class AddRefsToRidesAndMechanics < ActiveRecord::Migration[5.2]
  def change
    add_reference :mechanics, :mechanic_rides, foreign_key: true
    add_reference :rides, :mechanic_rides, foreign_key: true
  end
end

class MechanicRide < ApplicationRecord
  belongs_to :ride
  belongs_to :mechanic

  validates_presence_of :mechanic_id, :ride_id
end

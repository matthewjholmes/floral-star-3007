class Mechanic < ApplicationRecord
  has_many :rides

  def self.average_years_experience
    Mechanic.average(:years_experience)
  end
end

class Park < ApplicationRecord

  validates :name, :sq_miles, :state, :year, :fauna, presence: true
end

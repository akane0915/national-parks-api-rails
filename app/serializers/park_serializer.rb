class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :state, :sq_miles, :fauna, :year

  has_many :activities
end

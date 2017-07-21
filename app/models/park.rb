class Park < ApplicationRecord
  validates :name, :sq_miles, :state, :year, :fauna, presence: true

  scope :search_by_name, -> (name) { where("lower(name) like ?", "%#{name.downcase}%") }

  scope :search_by_state, -> (state) { where("lower(state) like ?", "%#{state.downcase}%") }

  scope :search_by_sq_miles, -> (sq_miles) { where("sq_miles = ?", sq_miles ) }

  scope :search_by_fauna, -> (fauna) { where("lower(fauna) like ?", "%#{fauna.downcase}%") }

  scope :search_by_year, -> (year) { where("year = ?", year ) }

  scope :order_by_oldest, -> { order(year: :asc) }

  scope :random_park, -> { order("RANDOM()").first}

end

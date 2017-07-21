class Activity < ApplicationRecord
  belongs_to :park
  validates :name, :description, presence: true
end

class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :park_id, :name, :description

  belongs_to :park
end

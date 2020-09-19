class Property < ApplicationRecord
  has_one :nearest_station, dependent: :destroy
  accepts_nested_attributes_for :nearest_station, allow_destroy: true
end

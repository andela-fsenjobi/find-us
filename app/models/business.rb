class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    "#{address} #{location}"
  end
end

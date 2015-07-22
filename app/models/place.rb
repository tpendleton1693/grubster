class Place < ActiveRecord::Base
  # Add associations
  belongs_to :user
  has_many :comments

  # Geocoding
  geocoded_by :address
  after_validation :geocode

  # Add Validation
  validates :name, :presence => true, length: { minimum: 3 }
  validates :address, :presence => true
  validates :description, :presence => true
end

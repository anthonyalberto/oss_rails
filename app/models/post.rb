class Post < ActiveRecord::Base
  attr_accessible :name, :public, :ip_address, :latitude, :longitude
  geocoded_by :ip_address
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address

  scope :viewable, where(:public => true)
end

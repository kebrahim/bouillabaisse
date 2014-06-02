class Location < ActiveRecord::Base
  attr_accessible :name, :latitude, :longitude, :city, :state
end

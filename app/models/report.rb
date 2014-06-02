class Report < ActiveRecord::Base
  belongs_to :fish
  belongs_to :user
  belongs_to :location

  attr_accessible :photo_url, :length, :weight, :fish_id, :user_id, :location_id
end

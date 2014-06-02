class Report < ActiveRecord::Base
  belongs_to :fish
  belongs_to :user
  belongs_to :location
end

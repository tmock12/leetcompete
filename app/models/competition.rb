class Competition < ActiveRecord::Base
  attr_accessible :title, :sport, :location, :description, :start_at, :end_at, :max_competitors, :registration_expiration, :price
  belongs_to :user
end

class Destination < ApplicationRecord
    has_many :road_trips
    has_many :users, through: :road_trips
end

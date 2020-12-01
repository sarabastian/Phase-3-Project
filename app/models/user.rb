class User < ApplicationRecord
    has_many :road_trips
    has_many :destinations, through: :road_trips
end

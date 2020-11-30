class DestinationSerializer < ActiveModel::Serializer
  # has_many :road_trips
  # has_many :users, through: :road_trips
  attributes :id, :location, :img_url
end

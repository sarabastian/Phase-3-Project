class UserSerializer < ActiveModel::Serializer
  # has_many :road_trips
  # has_many :destinations, through: :road_trips
  attributes :id, :username, :name
end

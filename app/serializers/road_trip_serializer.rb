class RoadTripSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :destination
  attributes :id, :user_id, :destination_id, :itinerary, :expenses, :group_members
end

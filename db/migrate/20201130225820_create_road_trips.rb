class CreateRoadTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :road_trips do |t|
      t.integer :user_id
      t.integer :destination_id
      t.string :itinerary
      t.string :expenses
      t.string :group_members

      t.timestamps
    end
  end
end

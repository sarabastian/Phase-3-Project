# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Destination.destroy_all
User.destroy_all
RoadTrip.destroy_all

d1 = Destination.create(location: 'Big Bend National Park', img_url: 'https://texaslodging.com/wp-content/uploads/2019/09/Jeremy-T.-Walls-1024x684.jpg')
d2 = Destination.create(location: 'Santa Fe, NM', img_url: 'https://i.pinimg.com/originals/44/21/3c/44213c17de5ff189d81d2e0d82e24dfc.jpg' )

u1 = User.create(username: 'sbastian', name: 'Sara')

r1 = RoadTrip.create(user_id: u1.id, destination_id: d1.id, itinerary: 'Depart: 10am CDT from Austin on December 16; Arrive: 10 am CDT December 17',
    expenses: 'Camping Site: $30/night', group_members: 'Sienna, Hannah, Rachel')
r2 = RoadTrip.create(user_id: u1.id, destination_id: d2.id, itinerary: 'Depart: 7am CDT from Austin on January 23; Arrive: 5pm MST on January 23')
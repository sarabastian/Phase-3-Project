# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Destination.destroy_all

d1 = Destination.create(location: 'Big Bend National Park', img_url: 'https://texaslodging.com/wp-content/uploads/2019/09/Jeremy-T.-Walls-1024x684.jpg')
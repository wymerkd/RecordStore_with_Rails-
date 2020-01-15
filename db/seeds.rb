# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# artist_list = [
#   [ "Oak" ],
#   [ "Pine" ],
#   [ "Sycamore" ],
# ]
#
# artist_list.each do |name|
#   Artist.create( name: name)
# end

Album.destroy_all

50.times do |index|
  Album.create!(name: Faker::Hacker.noun,
                        genre: Faker::Hacker.say_something_smart)
end

p "Created #{Album.count} albums"

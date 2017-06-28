# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.destroy_all

team_list = [
  [ "Celtics", "Boston", 60 ],
  [ "Trailblazers", "Portland", 60 ],
  [ "Lakers", "Los Angeles", 12 ],
]

team_list.each do |name, city, wins|
  Team.create( name: name, city: city, wins: wins )
end

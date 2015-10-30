# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


path = "airport_list.txt"
f = File.open(path, 'r')

f.each do |airport|
	Airport.create(wac: airport.match(/[A-Z]{3}/))
end

p1 = Passenger.create(first_name: 'Travis', last_name: "Tucker")

a1 = Airport.first
a2 = Airport.find(2)

f1 = Flight.create(origin: a1, destination: a2)

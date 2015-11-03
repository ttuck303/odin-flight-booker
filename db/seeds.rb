require 'date'
path = "airport_list.txt"
f = File.open(path, 'r')

f.each do |airport|
	Airport.create(wac: airport.match(/[A-Z]{3}/))
end

p1 = Passenger.create(first_name: 'Travis', last_name: "Tucker")

airport_subset = Airport.first(20)

r = Random.new

duration = (2.hours + 30.minutes).to_i


10000.times do

	a1 = airport_subset[r.rand(0..19)]
	a2 = airport_subset[r.rand(0..19)]

	if a1 == a2
		a2 = airport_subset[r.rand(0..19)] until a1 != a2
	end

	departs = Time.now + r.rand(0..30).days + r.rand(-3..12).hours

	Flight.create(origin: a1, destination: a2, departure_date: departs.to_date, departure_time: departs.to_time, duration: duration)
	Flight.create(origin: a2, destination: a1, departure_date: departs.to_date, departure_time: departs.to_time, duration: duration)
end







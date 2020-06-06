require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Maria")
guest2 = Guest.new("Michael")
guest3 = Guest.new("Alex")

listing1 = Listing.new("Seattle")
listing2 = Listing.new("NYC")
listing3 = Listing.new('Omaha')
listing4 = Listing.new('Denver')

trip1 = Trip.new(guest1, listing3)
trip2 = Trip.new(guest1, listing4)
trip3 = Trip.new(guest2, listing1)
trip4 = Trip.new(guest3, listing2)
trip5 = Trip.new(guest2, listing2)

Pry.start

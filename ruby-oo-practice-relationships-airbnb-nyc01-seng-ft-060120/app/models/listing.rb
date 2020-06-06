
class Listing
  attr_reader :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    Trip.all.select {|trip| trip.guest if trip.listing == self}
  end

  def trips
    Trip.all.select{|trip| trip.listing == self}
  end

  def trips_count
    self.trips.length
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    @@all.select { |listing| listing.city == city}
  end

  def self.most_popular
    listing = @@all.max_by{|e| e.trips.length}
    "Most Popular Listing: #{listing} | city: #{listing.city} | # of trips: #{listing.trips.length}"
  end
end
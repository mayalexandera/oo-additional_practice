
class Listing
  attr_reader :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    Trip.all.select{|t| t.listing == self}.map{|t| t.guest}
  end

  def trips
    Trip.all.select{|t| t.listing == self}
  end

  def trip_count
    trips.length
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    Listing.all.select { |listing| listing.city == city}
  end

  def self.most_popular
    listing = Listing.all.max_by{|e| e.trip_count}
    "Most Popular Listing: #{listing} | city: #{listing.city} | # of trips: #{listing.trip_count}"
  end
end
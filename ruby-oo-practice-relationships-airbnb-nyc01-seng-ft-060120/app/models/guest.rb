
class Guest
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def listings
    Listing.all.select{|listing| listing.guest == self}
  end

  def trips
    Trip.all.select{|trip| trip.guest == self}
  end

  def trip_count
    trips.length
  end

  def self.all
    @@all
  end

  def self.pro_traveller
    Guest.all.select{|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    Guest.all.select{|guest| guest.name == name}
  end

end
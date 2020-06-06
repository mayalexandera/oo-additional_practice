class Movie
  @@all = []
  attr_reader :title, :actors

  def initialize(title, actors)
    @title = title
    @actors = actors
    @@all << self
  end

  def self.most_actors
    Movie.all.max_by{ |movie| movie.actors.length}.title
  end

  def self.all
    @@all
  end


end
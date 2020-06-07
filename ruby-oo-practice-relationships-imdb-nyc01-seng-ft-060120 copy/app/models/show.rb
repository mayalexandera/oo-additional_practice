class Show
  @@all = []
  attr_reader :title, :actors

  def initialize(title, actors)
    @title = title
    @actors = actors
    @@all << self
  end

  def on_the_big_screen
    Movie.all.select{ |movie| movie.title == self.title }
  end

  def self.all
    @@all
  end
  
  
end
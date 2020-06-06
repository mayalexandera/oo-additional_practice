class Character
  @@all = []
  attr_reader :character_name, :media, :actor

  def initialize(character_name, actor)
    @character_name = character_name
    @actor = actor
    @@all << self
  end

  def appearances 
    movies = Movie.all.select{ |movie| movie.actors.include?(self.actor)}
    shows = Show.all.select{ |show| show.actors.include?(self.actor)}
    movies.concat(shows).map{|movie| movie.title}
  end

  def self.most_appearances
    @@all.max_by{ |character| character.appearances.length }
  end

  def self.all
    @@all
  end

end
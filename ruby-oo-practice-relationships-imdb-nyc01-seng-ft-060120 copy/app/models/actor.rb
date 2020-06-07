class Actor
  @@all = []
  attr_reader :actor_name
  
  def initialize(actor_name)
    @actor_name = actor_name
    @@all << self
  end

  def characters
    Character.all.select{ |character| character.character_name if character.actor == self}
  end

  def self.most_characters
    @@all.max_by{|actor| actor.characters.length}
  end

  def self.all
    @@all
  end

end
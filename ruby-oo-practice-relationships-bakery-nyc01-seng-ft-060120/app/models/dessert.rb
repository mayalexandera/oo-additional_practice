class Dessert
  @@all = []
  attr_reader :bakery, :ingredients, :name

  def initialize(name, bakery=nil, ingredients=[])
    @name = name
    @bakery = bakery
    @ingredients = ingredients
    @@all << self
  end

  def calories
    @ingredients.inject(0){|sum,e| sum + e.calorie_count }
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.select{ |dessert| dessert.name.include?(name)}
  end

end


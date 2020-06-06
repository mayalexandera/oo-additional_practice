class Ingredient
  @@all = []
  attr_reader :name, :calorie_count
  
  def initialize(name, calorie_count)
    @name = name
    @calorie_count = calorie_count
    @@all << self
  end

  def bakery
    Bakery.all.select{ |bakery| bakery.ingredients.include?(self)}
  end

  def self.all
    @@all
  end
  
  def self.find_all_by_name(ingredient_name)
    @@all.select{ |ingredient| ingredient.name.include?(ingredient_name)}
  end

  def self.find_recipes_by_ingredient(ingredient_name)
    desserts = []
    Dessert.all.select do |dessert| 
      dessert.ingredients.each do |ingredient|
        desserts << dessert if ingredient.name.include?(ingredient_name)
      end
    end

    puts "Sorry, no recipes include #{ingredient_name}." if desserts.empty?
    desserts.map {|dessert| dessert.name}
  end
end


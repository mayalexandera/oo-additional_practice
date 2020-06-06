class Bakery
  @@all = []

  def initialize(name)
    @name = name
    @@all<< self
  end
  
  def ingredients
    ingredients = []
    Dessert.all.select { |dessert| ingredients << dessert.ingredients if dessert.bakery == self}
    ingredients.flatten.uniq{|e| e.name}
  end

  def desserts
    Dessert.all.select { |dessert| dessert.bakery == self}
  end

  def average_calories
    calories = []
    desserts.select {|dessert| calories << dessert.calories}
    calories.sum/calories.length
  end

  def self.all
    @@all
  end

  def shopping_list
    ingredients = []
    desserts.each do |dessert| 
      dessert.ingredients.each do |ingredient|
        ingredients << ingredient.name if !ingredients.include?(ingredient.name)
      end
    end

    ingredients.join(" ")
  end
end


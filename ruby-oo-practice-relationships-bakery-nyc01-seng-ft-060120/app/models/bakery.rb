class Bakery
  @@all = []

  def initialize(name)
    @name = name
    @@all<< self
  end
  
  def ingredients
    Dessert.all.select{ |dessert| dessert.bakery == self}.map do |dessert|
      dessert.ingredients.flatten.uniq{|i| i.name}
    end
  end

  def desserts
    Dessert.all.select { |dessert| dessert.bakery == self}
  end

  def average_calories
    desserts.map{ |dessert| dessert.calories }.sum / desserts.length
  end

  def self.all
    @@all
  end

  def shopping_list
    desserts.map{ |dessert| dessert.ingredients}
    .flatten.uniq.map{|i| i.name}.join(", ")
  end
end


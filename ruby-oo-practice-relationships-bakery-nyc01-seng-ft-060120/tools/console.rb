require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bakery1 = Bakery.new("Amy's")
bakery2 = Bakery.new("5th Street Bakery")
bakery3 = Bakery.new("Chocolate Room")

ingredient1 = Ingredient.new('chocolate', 100)
ingredient2 = Ingredient.new('sugar', 100)
ingredient3 = Ingredient.new('flour', 100)
ingredient4 = Ingredient.new('eggs', 100)
ingredient5 = Ingredient.new('cream cheese', 100)
ingredient6 = Ingredient.new('graham crackers', 100)
ingredient7 = Ingredient.new('milk', 100)
ingredient8 = Ingredient.new('oil', 100)


dessert1 = Dessert.new(
  "Brownies", 
  bakery1, 
  [
    ingredient1, 
    ingredient2, 
    ingredient3, 
    ingredient4, 
    ingredient8
  ]
)

dessert2 = Dessert.new(
  "Chocolate Cake", 
  bakery2, 
  [
    ingredient1, 
    ingredient2, 
    ingredient3, 
    ingredient4, 
    ingredient8
    ]
  )

dessert3 = Dessert.new(
  'Sugar Cookies', 
  bakery1,
  [
    ingredient2, 
    ingredient3, 
    ingredient4, 
    ingredient7
  ]
)

dessert4 = Dessert.new(
  'Cheesecake', 
  bakery3,
  [ 
    ingredient2, 
    ingredient4, 
    ingredient5, 
    ingredient6
  ]
)

Pry.start

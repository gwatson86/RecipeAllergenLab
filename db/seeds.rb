User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all


trung = User.create(name: "Trung")
graham = User.create(name: "Graham")

cookie = Recipe.create(user: trung, name: "Cookie")
taco = Recipe.create(user: graham, name: "Taco")

flour = Ingredient.create(name: "Flour")
sugar = Ingredient.create(name: "Sugar")
salt = Ingredient.create(name: "Salt")
beef = Ingredient.create(name: "Beef")
chocolate = Ingredient.create(name: "Chocolate")

RecipeIngredient.create(recipe: taco, ingredient: flour)
RecipeIngredient.create(recipe: taco, ingredient: salt)
RecipeIngredient.create(recipe: taco, ingredient: beef)
RecipeIngredient.create(recipe: cookie, ingredient: flour)
RecipeIngredient.create(recipe: cookie, ingredient: sugar)
RecipeIngredient.create(recipe: cookie, ingredient: chocolate)
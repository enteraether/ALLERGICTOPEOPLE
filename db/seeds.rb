# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(name: "spicy nachos")
Recipe.create(name: "sour gummy worms")
Recipe.create(name: "theresa tacos")
Ingredient.create(name: "chips")
Ingredient.create(name: "sugar")
Ingredient.create(name: "beef")
RecipeIngredient.create(ingredient_id: 1, recipe_id: 1)
RecipeIngredient.create(ingredient_id: 2, recipe_id: 2)
RecipeIngredient.create(ingredient_id: 3, recipe_id: 3)
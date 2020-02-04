class Recipe < ApplicationRecord
    has_many :recipe_ingredients 
    has_many :ingredients, through: :recipe_ingredients
    accepts_nested_attributes_for :recipe_ingredients

    def new_recing(ing_id)
        RecipeIngredient.create(recipe_id: self.id, ingredient_id: ing_id)
    end
    
end

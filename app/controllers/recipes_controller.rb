class RecipesController < ApplicationController
    before_action :find_by_id, only: [:show,:edit,:update,:destroy]

def index
@recipes = Recipe.all
end 

def show 
end 

def new
@recipe = Recipe.new  
@users = User.all
@ingredients = Ingredient.all
3.times {@recipe.recipe_ingredients.build} 
end

def create 
    byebug
recipe = Recipe.create(recipe_params)
recipe.new_recing(ingredient_params)
redirect_to recipe_path(recipe)
end 

def edit 
end 

def update 
@recipe.update(recipe_params)
redirect_to recipe_path(@recipe)
end 

def destroy
@recipe.destroy
redirect_to recipes_path
end 


private 

def find_by_id
@recipe = Recipe.find(params[:id])
end 

def recipe_params
params.require(:recipe).permit(:name,:user_id)
end

def ingredient_params
params.require(:recipe).permit(:id,:id2,:id3)
end


end

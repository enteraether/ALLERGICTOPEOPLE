class RecipeIngredientsController < ApplicationController

    before_action :find_rec_ing, only: [:show, :edit, :update, :destroy]

def index
    @recings = RecipeIngredient.all
end

def show

end

def new
    @recing = RecipeIngredient.new
    @ingredients = Ingredient.all
    @recipes = Recipe.all
end

def create
    @recing = RecipeIngredient.create(rec_ing_params)

    redirect_to recipe_ingredient_path(@recing)
end

def edit

end

def update
    @recing.update(rec_ing_params)
    
    redirect_to recipe_ingredient_path(@recing)
end

def destroy
    @recing.destroy

    redirect_to recipe_ingredients_path
end

private

def rec_ing_params
    params.require(:recipe_ingredient).permit(:recipe_id, :ingredient_id)
end

def find_rec_ing
    @recing = RecipeIngredient.find(params[:id])
end


end

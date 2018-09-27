class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    
    params[:recipe][:ingredient_ids].each do |id|
      if id != nil
        RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id)
      end
    end
    
    redirect_to @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:user_id, :name)
  end
end

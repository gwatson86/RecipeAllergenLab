class RecipeIngredientsController < ApplicationController
  def new
    @recipe_ingredient = RecipeIngredient.new
  end

  def create
    @recipe_ingredient = RecipeIngredient.create(ri_params)
    redirect_to recipe_path(@recipe_ingredient.recipe_id)
  end
end

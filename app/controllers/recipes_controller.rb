class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @recipe.steps.build
    @recipe.ingredients.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    @recipe.save
    redirect_to @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:success] = 'レシピは削除されました'
    redirect_to root_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, steps_attributes: [:id, :number, :description, :_destroy], ingredients_attributes: [:id, :name, :amount, :_destroy])
  end
end

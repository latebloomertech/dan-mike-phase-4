class IngredientsController < ApplicationController

    def index
        render json: Ingredient.all, status: :ok
    end

    def show
        ingredient = find_ingredient
        render json: ingredient.recipes, status: :ok
    end

    private

    def find_ingredient
        Ingredient.find(params[:id])
    end

end

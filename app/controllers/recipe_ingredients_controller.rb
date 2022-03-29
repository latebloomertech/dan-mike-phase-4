class RecipeIngredientsController < ApplicationController
    def index
        render json: RecipeIngredient.all, status: :ok
    end

end

class IngredientsController < ApplicationController

    def index
        render json: Ingredient.all, status: :ok
    end

end

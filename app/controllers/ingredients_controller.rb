class IngredientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found


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

    def render_not_found(error)
        render json: {error: "#{error.model} not found"}, status: :not_found
    end


end

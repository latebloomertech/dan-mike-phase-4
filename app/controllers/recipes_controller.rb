class RecipesController < ApplicationController

def index
    render json: Recipe.all.to_json(only: [:id, :name, :description, :instructions]), status: :ok
end

def show
    recipe = find_recipe
    render json: recipe, status: :ok
end

private

def find_recipe
    Recipe.find(params[:id])
end

end

class RecipesController < ApplicationController

def index
    render json: {recipes: "recipes"}
end


end

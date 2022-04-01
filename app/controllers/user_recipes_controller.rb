class UserRecipesController < ApplicationController

    def create
        user_recipe = UserRecipe.create!(user_recipe_params)
        render json: user_recipe, status: :created
    end

    private

    def user_recipe_params
        params.permit(:user_id, :recipe_id)
    end

end

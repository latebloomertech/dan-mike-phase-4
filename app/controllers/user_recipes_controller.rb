class UserRecipesController < ApplicationController

    def create
        user = User.find_by(id: params[:user_id])
        user_recipes = user.user_recipes
        if user_recipes
            existing_user_recipe = user_recipes.find_by(recipe_id: user_recipe_params[:recipe_id])
        end
        if existing_user_recipe
            render json: { error: 'User recipe already exists for this recipe.' }, status: :bad_request
        else
            user_recipe = UserRecipe.create!(user_recipe_params)
            render json: user_recipe, status: :created
        end
    end

    def remove_by_recipe_id
        user = User.find_by(params[:user_id])
        user_recipes = user.user_recipes
        existing_user_recipe = user_recipes.find_by(recipe_id: user_recipe_params[:recipe_id])
        existing_user_recipe.delete
        head :no_content
    end

    private

    def user_recipe_params
        params.permit(:user_id, :recipe_id)
    end

end

class UserRecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :user_id
end

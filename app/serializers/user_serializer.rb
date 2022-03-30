class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :recipe_id
end

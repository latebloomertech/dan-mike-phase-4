class UsersController < ApplicationController
wrap_parameters format: []
# skip_before_action :authorize, only: :create

def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
end

def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
end

def recipes
  user = User.find_by(id: session[:user_id])
  if user
    render json: user.recipes
  else
    render json: { error: "Not authorized" }, status: :unauthorized
  end
end

private

def user_params
    params.permit(:username, :password)
end

end
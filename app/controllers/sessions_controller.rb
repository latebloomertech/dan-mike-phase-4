class SessionsController < ApplicationController
  # skip_before_action :authorize, only: :create

  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    render json: user
  end

  def destroy
    session.delete :user_id
    head :no_content
  end

end
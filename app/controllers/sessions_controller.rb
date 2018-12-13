class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(user_params[:email], user_params[:password])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to new_user_path
    end
  end

  def delete
    session[current_user.id] = nil
    redirect_to users_path
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end

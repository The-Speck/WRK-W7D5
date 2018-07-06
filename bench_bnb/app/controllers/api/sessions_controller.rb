class SessionController < ApplicationController

  def create
    username = user_params(:username)
    password = user_params(:password)

    @user = User.find_by_credentials(username, password)

    
  end

  def destroy

  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end

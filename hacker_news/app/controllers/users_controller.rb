class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # go to main page
      redirect_to root_url flash[:notice]= "thanks for signing up"
    else
      # if user doesn't have account, prompt them to sign up
      render :new
    end

  end
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)

  end
end

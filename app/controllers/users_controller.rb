class UsersController < ApplicationController

  def index
    if user_signed_in?
      redirect_to home_path
    else
      render "index"
    end 
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create( user_params )
  # @user = User.create(params[:user])
   redirect_to home_path
  end

  

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :pic)
    end

end

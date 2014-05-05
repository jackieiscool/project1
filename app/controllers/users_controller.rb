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
  @user = User.create(params[:user])
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end


  # get '/movie/:imdbID' do

  # res=Typhoeus.get("www.omdbapi.com/", 
  #   :params => { :i => params["imdbID"] })
  # @pic = JSON.parse(res.body)
  
end
